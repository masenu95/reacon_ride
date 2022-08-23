import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:reacon_customer/application/track/track_bloc.dart';
import 'package:reacon_customer/presentation/track/location_service.dart';

class MapSample extends StatefulWidget {
  static const routeName = "map-sample";
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  Completer<GoogleMapController> _controller = Completer();
  TextEditingController _originController = TextEditingController();
  TextEditingController _destinationController = TextEditingController();

  Set<Marker> _markers = Set<Marker>();
  Set<Polygon> _polygons = Set<Polygon>();
  Set<Polyline> _polylines = Set<Polyline>();
  List<LatLng> polygonLatLngs = <LatLng>[];

  int _polygonIdCounter = 1;
  int _polylineIdCounter = 1;

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  @override
  void initState() {
    super.initState();

    _setMarker(LatLng(37.42796133580664, -122.085749655962));
  }

  void _setMarker(LatLng point) {
    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId('marker'),
          position: point,
        ),
      );
    });
  }

  void _setPolygon() {
    final String polygonIdVal = 'polygon_$_polygonIdCounter';
    _polygonIdCounter++;

    _polygons.add(
      Polygon(
        polygonId: PolygonId(polygonIdVal),
        points: polygonLatLngs,
        strokeWidth: 2,
        fillColor: Colors.transparent,
      ),
    );
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

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TrackBloc, TrackState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          extendBodyBehindAppBar: true,
          body: state.loading
              ? Container()
              : Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              TextFormField(
                                controller: _originController,
                                decoration:
                                    InputDecoration(hintText: ' Origin'),
                                onChanged: (value) {
                                  print(value);
                                },
                              ),
                              TextFormField(
                                controller: _destinationController,
                                decoration:
                                    InputDecoration(hintText: ' Destination'),
                                onChanged: (value) {
                                  print(value);
                                },
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          onPressed: () async {
                            var directions =
                                await LocationService().getDirections(
                              _originController.text,
                              _destinationController.text,
                            );

                            _goToPlace(
                              directions['start_location']['lat'] as double,
                              directions['start_location']['lng'] as double,
                              directions['bounds_ne'] as Map<String, dynamic>,
                              directions['bounds_sw'] as Map<String, dynamic>,
                            );

                            _setPolyline(directions['polyline_decoded']
                                as List<PointLatLng>);
                          },
                          icon: Icon(Icons.search),
                        ),
                      ],
                    ),
                    Expanded(
                      child: GoogleMap(
                        mapType: MapType.normal,
                        markers: _markers,
                        myLocationEnabled: true,
                        polygons: _polygons,
                        polylines: _polylines,
                        initialCameraPosition: CameraPosition(
                          target: LatLng(
                            state.current.latitude,
                            state.current.longitude,
                          ),
                          zoom: 14.4746,
                        ),
                        onMapCreated: (GoogleMapController controller) {
                          _controller.complete(controller);
                        },
                        onTap: (point) {
                          setState(() {});
                        },
                      ),
                    ),
                  ],
                ),
        );
      },
    );
  }

  Future<void> _goToPlace(
    // Map<String, dynamic> place,
    double lat,
    double lng,
    Map<String, dynamic> boundsNe,
    Map<String, dynamic> boundsSw,
  ) async {
    // final double lat = place['geometry']['location']['lat'];
    // final double lng = place['geometry']['location']['lng'];

    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(target: LatLng(lat, lng), zoom: 12),
      ),
    );

    controller.animateCamera(
      CameraUpdate.newLatLngBounds(
          LatLngBounds(
            southwest:
                LatLng(boundsSw['lat'] as double, boundsSw['lng'] as double),
            northeast:
                LatLng(boundsNe['lat'] as double, boundsNe['lng'] as double),
          ),
          25),
    );
    _setMarker(LatLng(lat, lng));
  }
}
