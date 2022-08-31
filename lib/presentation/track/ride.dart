import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:reacon_customer/application/track/track_bloc.dart';
import 'package:reacon_customer/presentation/track/invoice_screen.dart';
import 'package:reacon_customer/presentation/track/location_service.dart';

class Ride extends StatefulWidget {
  const Ride({Key? key}) : super(key: key);
  static const routeName = "ride-screen";

  @override
  State<Ride> createState() => _RideState();
}

class _RideState extends State<Ride> {
  final Completer<GoogleMapController> _googleMapController = Completer();
  BitmapDescriptor? myIcon;
  late GoogleMapController newRideGoogleMapController;
  var rotation = 0.0;
  Set<Marker> markerSet = Set<Marker>();
  Set<Circle> circleSet = Set<Circle>();
  Map<MarkerId, Marker> markers = {};
  PolylinePoints polylinePoints = PolylinePoints();
  Set<Polyline> polyLineSet = Set<Polyline>();
  Set<Polyline> _polylines = Set<Polyline>();

  int _polylineIdCounter = 1;

  @override
  void initState() {
    super.initState();
    BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(size: Size(4, 4)),
      'images/tax.png',
    ).then((onValue) {
      myIcon = onValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    _addMarker(LatLng position, String id, BitmapDescriptor descriptor) {
      final MarkerId markerId = MarkerId(id);
      final Marker marker = Marker(
        markerId: markerId,
        icon: descriptor,
        position: position,
      );
      markerSet.add(marker);
    }

    int _polylineIdCounter = 1;

    var rotation = 0.0;

    return BlocConsumer<TrackBloc, TrackState>(
      listener: (context, state) {
        state.request.fold(
          () {},
          (a) {
            print(a);
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
            icon: myIcon!,
            rotation: rotation,
          );
          markerSet.add(driverMarker);
        }
        if (state.tripData.status == "COMPLETED") {
          Navigator.pushReplacementNamed(context, InvoiceScreen.routeName);
        }
      },
      builder: (context, state) {
        /// origin marker
        _addMarker(
          LatLng(
            state.tripData.fromLocation.latitude,
            state.tripData.fromLocation.longitude,
          ),
          "origin",
          BitmapDescriptor.defaultMarker,
        );

        /// destination marker
        _addMarker(
          LatLng(
            state.tripData.toLocation.latitude,
            state.tripData.toLocation.longitude,
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

        return Scaffold(
          extendBodyBehindAppBar: true,
          body: state.loading
              ? Container()
              : Stack(children: [
                  LayoutBuilder(
                    builder: (BuildContext context, BoxConstraints constraint) {
                      return SizedBox(
                        height: constraint.maxHeight,
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
                          },
                          markers: markerSet,
                        ),
                      );
                    },
                  ),
                ]),
        );
      },
    );
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
}
