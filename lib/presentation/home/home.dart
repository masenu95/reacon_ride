import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:reacon_customer/application/track/track_bloc.dart';
import 'package:reacon_customer/presentation/track/search.dart';
import 'package:reacon_customer/presentation/track/track.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  static const routeName = "home";

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final Completer<GoogleMapController> _controller = Completer();
  String googleAPiKey = "AIzaSyAnx7JxpeUbJ_Q-FAcqArt_maE3minee9A";

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 50,
      ),
      children: [
        SizedBox(
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Colors.red,
                child: Container(
                  width: MediaQuery.of(context).size.width - 40,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Welcome to Dirm Ride!",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Row(
                          children: const [
                            Text(
                              "Ride with Us",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                              size: 14,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Theme.of(context).disabledColor,
                child: Container(
                  width: MediaQuery.of(context).size.width - 40,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Best,Reliable and Affordable Service",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Row(
                          children: const [
                            Text(
                              "Ride with Us",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                              size: 14,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          children: [
            SizedBox(
              width: (MediaQuery.of(context).size.width / 2) - 20,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: GestureDetector(
                  onTap: () =>
                      Navigator.pushNamed(context, TrackMapDetail.routeName),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Image.asset(
                          "images/taxSide.png",
                          height: 100,
                          width: 100,
                        ),
                        const Text(
                          "Abiria/Passanger",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            SizedBox(
              width: (MediaQuery.of(context).size.width / 2) - 20,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Image.asset(
                        "images/dialogImage.png",
                        height: 100,
                        width: 100,
                      ),
                      const Text(
                        "Mzigo/Luggage",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, SearchRoute.routeName),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Row(
                children: [
                  const Icon(
                    Icons.search,
                    size: 40,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Your Destinaton',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontSize: 20),
                  )
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text('Around you'),
        const SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, TrackMapDetail.routeName),
          child: SizedBox(
            height: 250,
            child: Center(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                ),
                child: BlocBuilder<TrackBloc, TrackState>(
                  builder: (context, state) {
                    if (state.loading) {
                      return Container();
                    } else {
                      return AbsorbPointer(
                        absorbing: true,
                        child: GoogleMap(
                          mapType: MapType.terrain,

                          initialCameraPosition: CameraPosition(
                            target: LatLng(state.current.latitude,
                                state.current.longitude),
                            zoom: 17.4746,
                          ),
                          gestureRecognizers: {
                            Factory<OneSequenceGestureRecognizer>(
                                () => ScaleGestureRecognizer()),
                          },
                          myLocationEnabled: true,
                          tiltGesturesEnabled: false,
                          compassEnabled: false,
                          scrollGesturesEnabled: false,
                          zoomGesturesEnabled: false,
                          onMapCreated: (GoogleMapController controller) {
                            _controller.complete(controller);
                          },
                          //markers: Set<Marker>.of(markers.values),
                          //polylines: Set<Polyline>.of(polylines.values),
                        ),
                      );
                    }
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
