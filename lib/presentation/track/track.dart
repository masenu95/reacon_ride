import 'dart:async';

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:reacon_customer/application/auth/authentication/auth_bloc.dart';
import 'package:reacon_customer/application/track/track_bloc.dart';
import 'package:reacon_customer/domain/track/vehichle.dart';
import 'package:reacon_customer/infrastucture/core/constant.dart';
import 'package:reacon_customer/infrastucture/fireStoreCollections.dart';
import 'package:reacon_customer/presentation/core/utils/colors.dart';
import 'package:reacon_customer/presentation/core/utils/custom_style.dart';
import 'package:reacon_customer/presentation/core/utils/dimensions.dart';
import 'package:reacon_customer/presentation/core/utils/strings.dart';
import 'package:reacon_customer/presentation/core/widget.dart';
import 'package:reacon_customer/presentation/track/location_service.dart';
import 'package:reacon_customer/presentation/track/mapKitAssistant.dart';
import 'package:reacon_customer/presentation/track/ride.dart';
import 'package:url_launcher/url_launcher.dart';

class TrackMapDetail extends StatefulWidget {
  const TrackMapDetail({Key? key}) : super(key: key);
  static const routeName = "track-map-detail";
  @override
  State<TrackMapDetail> createState() => _TrackMapDetailState();
}

class _TrackMapDetailState extends State<TrackMapDetail> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final Completer<GoogleMapController> _googleMapController = Completer();
  late GoogleMapController newRideGoogleMapController;
  TextEditingController searchController = TextEditingController();
  TextEditingController fromController = TextEditingController();
  TextEditingController toController = TextEditingController();
  PolylinePoints polylinePoints = PolylinePoints();
  Set<Polyline> polyLineSet = Set<Polyline>();
  late StreamSubscription<Position> positionStream;
  final geo = Geoflutterfire();
  late Position myPosition;
  BitmapDescriptor? taxIcon;
  BitmapDescriptor? bodaIcon;
  BitmapDescriptor? bajajiIcon;
  BitmapDescriptor? kirikuuIcon;
  bool isAction = true;
  Set<Marker> markerSet = Set<Marker>();
  Set<Circle> circleSet = Set<Circle>();
  Set<Polyline> _polylines = Set<Polyline>();

  int _polylineIdCounter = 1;

  var rotation = 0.0;

  final Completer<GoogleMapController> _controller = Completer();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 10.4746,
  );

  String location = 'Null, Press Button';
  String Address = 'search';
  double _originLatitude = -6.870248414472146,
      _originLongitude = 39.25567848191538;
  double _destLatitude = -6.809842441823504,
      _destLongitude = 39.262245284538466;
  Map<MarkerId, Marker> markers = {};
  Map<PolylineId, Polyline> polylines = {};

  List<LatLng> polylineCoordinates = [];

  @override
  void initState() {
    super.initState();
    BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(size: Size(4, 4)),
      'images/tax.png',
    ).then((onValue) {
      taxIcon = onValue;
    });
    BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(size: Size(4, 4)),
      'images/boda.png',
    ).then((onValue) {
      bodaIcon = onValue;
    });
    BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(size: Size(4, 4)),
      'images/bajaji.png',
    ).then((onValue) {
      bajajiIcon = onValue;
    });
    BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(size: Size(4, 4)),
      'images/kirikuu.png',
    ).then((onValue) {
      kirikuuIcon = onValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TrackBloc, TrackState>(
      listener: (context, state) {
        state.request.fold(
          () {},
          (a) {
            print(state.requestLoading);
            a.fold(
              (failure) {
                FlushbarHelper.createError(
                  message: failure.map(
                    serverError: (_) => 'Driver is unavailable try again',
                    unavailable: (_) => 'Driver is unavailable try again',
                  ),
                ).show(context);
              },
              (r) => null,
            );
          },
        );
        if (state.driverData.location.longitude != 0.0) {
          LatLng mPosition = LatLng(
            state.driverData.location.latitude,
            state.driverData.location.longitude,
          );
          Marker driverMarker = Marker(
            position: mPosition,
            markerId: const MarkerId("driverPosition"),
            icon: taxIcon!,
            rotation: rotation,
          );
          markerSet.add(driverMarker);
        }

        if (state.drivers.isNotEmpty) {
          for (final driver in state.drivers) {
            LatLng mPosition = LatLng(
              driver.location.latitude,
              driver.location.longitude,
            );
            var icon = taxIcon!;
            if (driver.vehicleType == "Dirm XL") {
              icon = taxIcon!;
            } else if (driver.vehicleType == "Dirm XXL") {
              icon = taxIcon!;
            } else if (driver.vehicleType == "Dirm Boda") {
              icon = bodaIcon!;
            } else if (driver.vehicleType == "Dirm Bajaji") {
              icon = bajajiIcon!;
            } else if (driver.vehicleType == "Dirm Kirikuu") {
              icon = kirikuuIcon!;
            }
            Marker driverMarker = Marker(
              position: mPosition,
              markerId: MarkerId(driver.token),
              icon: icon,
              rotation: rotation,
            );
            markerSet.add(driverMarker);
          }
        }

        if (state.tripData.status == "ON WAY") {
          Navigator.pushReplacementNamed(context, Ride.routeName);
        }
      },
      builder: (context, state) {
        /// origin marker
        _addMarker(
          LatLng(
            state.fromPlace.coordinates.latitude!,
            state.fromPlace.coordinates.longitude!,
          ),
          "origin",
          BitmapDescriptor.defaultMarker,
        );

        /// destination marker
        _addMarker(
          LatLng(
            state.toPlace.coordinates.latitude!,
            state.toPlace.coordinates.longitude!,
          ),
          "destination",
          BitmapDescriptor.defaultMarkerWithHue(90),
        );

        polylineGenerate(
          destination:
              "${state.toPlace.coordinates.latitude},${state.toPlace.coordinates.longitude}",
          origin:
              "${state.fromPlace.coordinates.latitude},${state.fromPlace.coordinates.longitude}",
        );

        /*  _getPolyline(
          fromLatitude: state.fromPlace.coordinates.latitude!,
          toLatitude: state.toPlace.coordinates.latitude!,
          fromLong: state.fromPlace.coordinates.longitude!,
          toLong: state.toPlace.coordinates.longitude!,
        );*/

        return Scaffold(
          key: _scaffoldKey,
          extendBodyBehindAppBar: true,
          body: state.loading
              ? Container()
              : Stack(
                  children: [
                    LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraint) {
                        return SizedBox(
                          height: constraint.maxHeight -
                              (constraint.maxHeight * 0.3),
                          child: GoogleMap(
                            mapType: MapType.normal,
                            initialCameraPosition: CameraPosition(
                              target: LatLng(
                                state.current.latitude,
                                state.current.longitude,
                              ),
                              zoom: 12.4746,
                            ),
                            myLocationEnabled: true,
                            tiltGesturesEnabled: true,
                            compassEnabled: true,
                            scrollGesturesEnabled: true,
                            zoomGesturesEnabled: true,
                            circles: circleSet,
                            polylines: _polylines,
                            onMapCreated: (GoogleMapController controller) {
                              _googleMapController.complete(controller);
                              newRideGoogleMapController = controller;

                              locatePosition();
                            },
                            markers: markerSet,
                          ),
                        );
                      },
                    ),
                    DraggableScrollableSheet(
                      builder: (context, scrollController) {
                        print("----------------------${state.requestLoading}----------------------");
                        return Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(Dimensions.radius * 3),
                              topRight: Radius.circular(Dimensions.radius * 3),
                            ),
                          ),
                          child: SingleChildScrollView(
                            controller: scrollController,
                            child: state.requestLoading || state.tripData.status == "ACCEPTED"
                                ? RequestBottomSheet()
                                : state.tripData.status == "ACCEPTED"
                                    ? acceptedRiderWidget(context)
                                    : selectRiderWidget(context),
                          ),
                        );
                      },
                      initialChildSize:
                          state.tripData.status == "ACCEPTED" ? 0.35 : 0.45,
                      minChildSize:
                          state.tripData.status == "ACCEPTED" ? 0.2 : 0.4,
                      maxChildSize:
                          state.tripData.status == "ACCEPTED" ? 0.45 : 0.6,
                    ),
                  ],
                ),
        );
      },
    );
  }

  Padding acceptedRiderWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: Dimensions.marginSize,
        right: Dimensions.marginSize,
        top: Dimensions.heightSize * 3,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset('assets/driver.png'),
              const SizedBox(
                width: Dimensions.widthSize,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.read<TrackBloc>().state.driverData.name,
                    style: GoogleFonts.roboto(
                      color: CustomColor.primaryColor,
                      fontSize: Dimensions.largeTextSize,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: Dimensions.heightSize * 0.5,
                  ),

                  // MyRating(rating: '5')
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 40.0,
                width: 120.0,
                decoration: const BoxDecoration(
                  color: Color(0xFFFCEADA),
                  borderRadius: BorderRadius.all(
                    Radius.circular(Dimensions.radius * 2),
                  ),
                ),
                child: Center(
                  child: Text(
                    context.read<TrackBloc>().state.tripData.status,
                    style: GoogleFonts.roboto(color: CustomColor.accentColor),
                  ),
                ),
              ),
              const SizedBox(
                width: Dimensions.widthSize,
              ),
            ],
          ),
          const SizedBox(
            height: Dimensions.heightSize * 3,
          ),
          const Divider(
            color: Colors.grey,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: GestureDetector(
                  child: Container(
                    child: Text(
                      Strings.cancelRide,
                      style: GoogleFonts.roboto(
                        color: Colors.red,
                        fontSize: Dimensions.defaultTextSize,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onTap: () {},
                ),
              ),
              Expanded(
                child: GestureDetector(
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.messenger,
                          color: CustomColor.accentColor,
                        ),
                        const SizedBox(
                          width: Dimensions.widthSize * 0.5,
                        ),
                        Text(
                          Strings.message,
                          style: CustomStyle.textStyle,
                        ),
                      ],
                    ),
                  ),
                  onTap: () {},
                ),
              ),
              Expanded(
                child: GestureDetector(
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.call,
                          color: CustomColor.accentColor,
                        ),
                        const SizedBox(
                          width: Dimensions.widthSize * 0.5,
                        ),
                        Text(
                          Strings.callDriver,
                          style: CustomStyle.textStyle,
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    launchUrl(Uri(
                      scheme: 'tel',
                      path: context.read<TrackBloc>().state.driverData.phone,
                    ));
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
        'Location permissions are permanently denied, we cannot request permissions.',
      );
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition();
  }

  Future<void> GetAddressFromLatLong(Position position) async {
    final List<Placemark> placemarks =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    /* if (kDebugMode) {
      print(placemarks);
    }*/
    final Placemark place = placemarks[0];
    Address =
        '${place.street}, ${place.subLocality}, ${place.locality}, ${place.postalCode}, ${place.country}';
    setState(() {});
  }

  _addMarker(LatLng position, String id, BitmapDescriptor descriptor) {
    final MarkerId markerId = MarkerId(id);
    final Marker marker = Marker(
      markerId: markerId,
      icon: descriptor,
      position: position,
    );
    markerSet.add(marker);
  }

  _addPolyLine(List<LatLng> polylineCoordinates) {
    Polyline polyline = Polyline(
      polylineId: const PolylineId("poly"),
      color: Theme.of(context).primaryColor,
      points: polylineCoordinates,
      jointType: JointType.round,
      width: 5,
      startCap: Cap.roundCap,
      endCap: Cap.roundCap,
      geodesic: true,
    );
    setState(() {
      polyLineSet.add(polyline);
    });
  }

  _getPolyline({
    required double fromLatitude,
    required double toLatitude,
    required double fromLong,
    required double toLong,
  }) async {
    final PolylineResult result =
        await polylinePoints.getRouteBetweenCoordinates(
      EnvConstant.googleAPiKey,
      PointLatLng(fromLatitude, fromLong),
      PointLatLng(toLatitude, toLong),
      travelMode: TravelMode.driving,
    );
    if (result.points.isNotEmpty) {
      result.points.forEach((PointLatLng point) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      });
    }

    _addPolyLine(polylineCoordinates);
    // this make sure the polylines fit the map
    LatLngBounds latLngBounds;
    if ((fromLatitude > toLatitude) && (fromLong > toLong)) {
      latLngBounds = LatLngBounds(
        southwest: LatLng(
          fromLatitude,
          fromLong,
        ),
        northeast: LatLng(
          toLatitude,
          toLong,
        ),
      );
    } else if (fromLatitude > toLatitude) {
      latLngBounds = LatLngBounds(
        southwest: LatLng(toLatitude, fromLong),
        northeast: LatLng(fromLatitude, toLong),
      );
    } else if (fromLong > toLong) {
      latLngBounds = LatLngBounds(
        southwest: LatLng(fromLatitude, toLong),
        northeast: LatLng(toLatitude, fromLong),
      );
    } else {
      latLngBounds = LatLngBounds(
        southwest: LatLng(
          fromLatitude,
          fromLong,
        ),
        northeast: LatLng(
          toLatitude,
          toLong,
        ),
      );
    }
    setState(() {
      newRideGoogleMapController
          .animateCamera(CameraUpdate.newLatLngBounds(latLngBounds, 150));
    });

    /// add origin marker origin marker
    // Marker pickUpMarker = Marker(
    //   position: source,
    //   markerId: MarkerId("pickUpId"),
    //   icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueYellow),
    //   rotation: rotation,
    // );

    // Add destination marker

    Marker dropOffMarker = Marker(
      position: LatLng(
        toLatitude,
        toLong,
      ),
      markerId: const MarkerId("dropOffId"),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
      rotation: rotation,
    );
    setState(() {
      // markerSet.add(driverMarker);
      // markerSet.add(pickUpMarker);
      markerSet.add(dropOffMarker);
    });

    /// add origin Circle
    Circle pickUpCircle = Circle(
      circleId: const CircleId("pickUpId"),
      center: LatLng(
        fromLatitude,
        fromLong,
      ),
      radius: 12,
      strokeWidth: 4,
      strokeColor: Colors.yellowAccent,
      fillColor: Colors.yellow,
    );

    /// add destination Circle
    Circle dropOffCircle = Circle(
      circleId: const CircleId("dropOfId"),
      center: LatLng(
        toLatitude,
        toLong,
      ),
      radius: 12,
      strokeWidth: 4,
      strokeColor: Colors.redAccent,
      fillColor: Colors.red,
    );
    setState(() {
      circleSet.add(pickUpCircle);
      circleSet.add(dropOffCircle);
    });
  }

  Future<void> polylineGenerate({
    required String origin,
    required String destination,
  }) async {
    var directions = await LocationService().getDirections(
      origin,
      destination,
    );
    _setPolyline(directions['polyline_decoded'] as List<PointLatLng>);
  }

  void _setPolyline(List<PointLatLng> points) {
    final String polylineIdVal = 'polyline_$_polylineIdCounter';
    _polylineIdCounter++;
    _polylines.clear();

    _polylines.add(
      Polyline(
        polylineId: PolylineId(polylineIdVal),
        width: 5,
        color: Colors.red,
        points: points
            .map(
              (point) => LatLng(point.latitude, point.longitude),
            )
            .toList(),
      ),
    );
  }

  void locatePosition() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission != PermissionStatus.granted) {
      LocationPermission permission = await Geolocator.requestPermission();
      if (permission != PermissionStatus.granted) getLocation();
      return;
    }
  }

  getLocation() async {
    // this will be the first position before start the rotation
    LatLng oldPos = const LatLng(0, 0);

    positionStream = Geolocator.getPositionStream().listen((Position position) {
      myPosition = position;

      LatLng mPosition = LatLng(position.latitude, position.longitude);

      // this will be used on rotating the icon based on where it moves.
      var rotation = MapKitAssistant.getMarkerRotation(
        oldPos.latitude,
        oldPos.longitude,
        myPosition.latitude,
        myPosition.longitude,
      );

      //set live location to firestore if the driver is online
      /*  driverCollectionReference
          .doc(context.read<AuthBloc>().state.user.uid)
          .set(
            (geo.point(
              latitude: myPosition.latitude,
              longitude: myPosition.longitude,
            )).data,
            SetOptions(merge: true),
          );
*/
      /// add origin marker origin marker
      /*  Marker driverMarker = Marker(
        position: mPosition,
        markerId: const MarkerId("driverPosition"),
        icon: taxIcon!,
        rotation: rotation as double,
      );*/

      setState(() {
        if (!mounted) return;

        /* markerSet.add(driverMarker);*/
        // CameraPosition cameraPosition =
        //     CameraPosition(target: mPosition, zoom: 15);
        // newRideGoogleMapController
        //     .animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
        oldPos = mPosition;
      });

      // var destNation;

      // if (status == 'Accepted') {
      //   destNation = pickUpLatLng;
      // } else if (status == 'picked') {
      //   destNation = dropOffLatLng;
      // }

      // _getPolyline(mPosition, destNation);
      //updateDeliveryDetails();
    });
  }

  Padding selectRiderWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: Dimensions.heightSize * 3),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: Dimensions.marginSize,
              right: Dimensions.marginSize,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  Strings.selectRide,
                  style: GoogleFonts.roboto(
                    color: CustomColor.primaryColor,
                    fontSize: Dimensions.largeTextSize,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GestureDetector(
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                      color: CustomColor.primaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.backspace_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      isAction = !isAction;
                    });
                    // print(isAction.toString());
                  },
                )
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              itemCount: 4,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                //print(VehicleList.list().length);
                final Vehicle vehicle = VehicleList.list()[index];
                return GestureDetector(
                  onTap: () {
                    context.read<TrackBloc>().add(
                          const TrackEvent.sendRequest(),
                        );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: Dimensions.heightSize),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFF1F1F3),
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.black.withOpacity(0.2),
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(Dimensions.marginSize),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  vehicle.image,
                                  width: 120,
                                  height: 50,
                                ),
                                const SizedBox(
                                  width: Dimensions.widthSize,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      vehicle.name,
                                      style: GoogleFonts.roboto(
                                        color: CustomColor.primaryColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: Dimensions.heightSize * 0.5,
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.person,
                                          color: Colors.grey,
                                        ),
                                        Text(
                                          vehicle.person,
                                          style: CustomStyle.textStyle,
                                        ),
                                        const SizedBox(
                                          width: Dimensions.widthSize,
                                        ),
                                        const Icon(
                                          Icons.location_on,
                                          color: Colors.grey,
                                        ),
                                        Text(
                                          " ${numberFormat(context.read<TrackBloc>().state.distance.round().toString())} km",
                                          style: CustomStyle.textStyle,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Text(
                              'TZS ${numberFormat(context.read<TrackBloc>().state.taxPrice.round().toString())}',
                              style: GoogleFonts.roboto(
                                color: CustomColor.primaryColor,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void showRequestRideBottomSheet(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (builder) {
        return RequestBottomSheet();
      },
    );
  }

  @override
  void dispose() {
    positionStream.cancel();
    newRideGoogleMapController.dispose();
    polyLineSet.clear();
    super.dispose();
  }
}

class RequestBottomSheet extends StatefulWidget {
  @override
  _RequestBottomSheetState createState() => _RequestBottomSheetState();
}

class _RequestBottomSheetState extends State<RequestBottomSheet> {
  double progress = 0;
  late Timer _timer;
  int _start = 0;

  currentProgressColor() {
    if (progress >= 0.6 && progress < 0.8) {
      return Colors.orange;
    }
    if (progress >= 0.8) {
      return Colors.red;
    } else {
      return Colors.green;
    }
  }

  double percentage = 0.0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.6,
      color: const Color(0xFF737373),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 30,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.3),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: Center(
                child: Container(
                  height: 5.0,
                  width: 100.0,
                  decoration: const BoxDecoration(
                    color: CustomColor.primaryColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(Dimensions.radius),
                    ),
                  ),
                ),
              ),
            ),
            requestRideWidget(context)
          ],
        ),
      ),
    );
  }

  Widget requestRideWidget(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(
          left: Dimensions.marginSize,
          right: Dimensions.marginSize,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              Strings.requestingRide,
              style: GoogleFonts.roboto(
                color: CustomColor.primaryColor,
                fontSize: Dimensions.extraLargeTextSize * 1.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: Dimensions.heightSize * 3,
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: LinearProgressIndicator(),
            ),
            const SizedBox(
              height: Dimensions.heightSize * 3,
            ),
            GestureDetector(
              child: Container(
                height: 50.0,
                decoration: const BoxDecoration(
                  color: CustomColor.primaryColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(Dimensions.radius * 0.5),
                  ),
                ),
                child: Center(
                  child: Text(
                    Strings.cancelRequest.toUpperCase(),
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: Dimensions.largeTextSize,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              onTap: () {
                Navigator.of(context).pop();
              },
            )
          ],
        ),
      ),
    );
  }
}
