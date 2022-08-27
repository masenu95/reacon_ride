import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:reacon_customer/application/track/track_bloc.dart';
import 'package:reacon_customer/presentation/track/invoice_screen.dart';

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
      markers[markerId] = marker;
    }

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
}
