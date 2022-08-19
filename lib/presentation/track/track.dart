import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:reacon_customer/application/track/track_bloc.dart';
import 'package:reacon_customer/infrastucture/core/constant.dart';
import 'package:reacon_customer/presentation/core/colors.dart';
import 'package:reacon_customer/presentation/core/custom_style.dart';
import 'package:reacon_customer/presentation/core/strings.dart';
import 'package:reacon_customer/presentation/track/search.dart';

class TrackMapDetail extends StatefulWidget {
  const TrackMapDetail({Key? key}) : super(key: key);
  static const routeName = "track-ma-detail";
  @override
  State<TrackMapDetail> createState() => _TrackMapDetailState();
}

class _TrackMapDetailState extends State<TrackMapDetail> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController searchController = TextEditingController();
  TextEditingController fromController = TextEditingController();
  TextEditingController toController = TextEditingController();
  bool isAction = true;

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
  PolylinePoints polylinePoints = PolylinePoints();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrackBloc, TrackState>(
      builder: (context, state) {
        /// origin marker
        _addMarker(
            LatLng(state.fromPlace.coordinates.latitude!,
                state.fromPlace.coordinates.longitude!),
            "origin",
            BitmapDescriptor.defaultMarker);

        /// destination marker
        _addMarker(
            LatLng(state.toPlace.coordinates.latitude!,
                state.toPlace.coordinates.longitude!),
            "destination",
            BitmapDescriptor.defaultMarkerWithHue(90));

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
                            mapType: MapType.terrain,
                            initialCameraPosition: CameraPosition(
                              target: LatLng(state.current.latitude,
                                  state.current.longitude),
                              zoom: 12.4746,
                            ),
                            myLocationEnabled: true,
                            tiltGesturesEnabled: true,
                            compassEnabled: true,
                            scrollGesturesEnabled: true,
                            zoomGesturesEnabled: true,
                            onMapCreated: (GoogleMapController controller) {
                              _controller.complete(controller);
                            },
                            markers: Set<Marker>.of(markers.values),
                          ),
                        );
                      },
                    ),
                    DraggableScrollableSheet(
                        initialChildSize: 0.3,
                        minChildSize: 0.3,
                        builder: (BuildContext context,
                            ScrollController scrollController) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 0),
                            child: Container(
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(6.0),
                                topRight: Radius.circular(6.0),
                              )),
                              child: Column(
                                children: [
                                  GestureDetector(
                                    onTap: () => Navigator.popAndPushNamed(
                                        context, SearchRoute.routeName),
                                    child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20.0, vertical: 10.0),
                                        decoration: BoxDecoration(
                                          color: Theme.of(context).cardColor,
                                          borderRadius:
                                              BorderRadius.circular(6),
                                        ),
                                        child: Row(
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.all(5),
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Theme.of(context)
                                                    .scaffoldBackgroundColor,
                                              ),
                                              child: const Icon(Icons.search),
                                            ),
                                            const SizedBox(
                                              width: 15,
                                            ),
                                            Text(
                                              'Where to?',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyLarge!
                                                  .copyWith(letterSpacing: 1),
                                            ),
                                          ],
                                        )),
                                  )
                                ],
                              ),
                            ),
                          );
                        })
                  ],
                ),
        );
      },
    );
  }

  Future<void> _goToTheLake() async {
    final Position position = await _determinePosition();
    final GoogleMapController controller = await _controller.future;
    final double distanceInMeters = Geolocator.distanceBetween(
        52.2165157, 6.9437819, 52.3546274, 4.8285838);
    if (kDebugMode) {
      print(distanceInMeters / 1000);
    }
    controller.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
            bearing: 192.8334901395799,
            target: LatLng(position.latitude, position.longitude),
            tilt: 59.440717697143555,
            zoom: 12.151926040649414),
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
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition();
  }

  Future<void> GetAddressFromLatLong(Position position) async {
    final List<Placemark> placemarks =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    if (kDebugMode) {
      print(placemarks);
    }
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
    markers[markerId] = marker;
  }

  _addPolyLine() {
    const PolylineId id = PolylineId("poly");
    final Polyline polyline = Polyline(
      polylineId: id,
      color: Colors.red,
      points: polylineCoordinates,
      width: 4,
    );
    polylines[id] = polyline;
    setState(() {});
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
    );
    if (result.points.isNotEmpty) {
      result.points.forEach((PointLatLng point) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      });
    }
    print(result.points);
    _addPolyLine();
  }
}
