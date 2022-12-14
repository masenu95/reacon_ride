import 'dart:convert';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:reacon_customer/domain/auth/user.dart';
import 'package:reacon_customer/domain/track/distance.dart';
import 'package:reacon_customer/domain/track/driver.dart';
import 'package:reacon_customer/domain/track/driver_model.dart';
import 'package:reacon_customer/domain/track/i_track_facade.dart';
import 'package:reacon_customer/domain/track/request.dart';
import 'package:reacon_customer/domain/track/request_failure.dart';
import 'package:reacon_customer/infrastucture/core/constant.dart';
import 'package:geoflutterfire/geoflutterfire.dart';

@LazySingleton(as: ITrackFacade)
class ApiTrackFacade implements ITrackFacade {
  final FirebaseFirestore _firestore;
  final FirebaseMessaging _messaging;
  final geo = Geoflutterfire();

  ApiTrackFacade(this._firestore, this._messaging);
  @override
  Future<Distance> getDirectionDistance({
    required LatLng origin,
    required LatLng destination,
  }) async {
    Uri url = Uri.parse(
      "https://maps.googleapis.com/maps/api/distancematrix/json?units=imperial&origins=${origin.latitude},${origin.longitude}&destinations=${destination.latitude},${destination.longitude}&key=${EnvConstant.googleAPiKey}",
    );

    final response = await http.get(url);
    print(response.body);
    Map<String, dynamic> distance =
        json.decode(response.body) as Map<String, dynamic>;

    return Distance.fromJson(distance);
  }

  @override
  Future<Either<RequestFailure, RequestModel>> createRequest({
    required GeoPoint fromLocation,
    required GeoPoint toLocation,
    required String status,
    required String fromName,
    required String toName,
    required String estimatedCost,
    required String actualCost,
    required List<Driver> drivers,
  }) async {
    print(
        '============================${drivers.length}==========================');
    try {
      final User? firebaseUser = FirebaseAuth.instance.currentUser;

      if (drivers.isNotEmpty) {
        final driver = (drivers..shuffle()).first;

        if (firebaseUser != null) {
          final userSnapshot =
              await _firestore.collection('Users').doc(firebaseUser.uid).get();

          if (userSnapshot.data() != null) {
            print(userSnapshot.data());
            final UserModel user = UserModel.fromJson(
              json: userSnapshot.data() as Map<String, dynamic>,
              id: userSnapshot.id,
            );

            //timestamp
            final DateTime currentPhoneDate = DateTime.now();
            final Timestamp myTimeStamp = Timestamp.fromDate(currentPhoneDate);

            //final address =
            // await getAddressFromLatLng(geoPoint.latitude, geoPoint.longitude);
            // print(address);
            final String id =
                '${user.uid}${DateTime.now().millisecondsSinceEpoch}';
            final token = await _messaging.getToken();
            await _firestore.collection('Trips').doc(id).set({
              'customer': user.name,
              'phone': user.phone,
              'driverName': driver.name,
              'uid': user.uid,
              'token': token,
              'id': id,
              "fromLocation": fromLocation,
              'toLocation': toLocation,
              'fromName': fromName,
              'toName': toName,
              'status': 'REQUESTING',
              'estimatedFee': estimatedCost,
              'actualCost': actualCost,
              'created_at': myTimeStamp.toDate(),
            });

            final trip = await _firestore.collection('Trips').doc(id).get();

            if (trip.data() != null) {
              final requestModel =
                  RequestModel.fromJson(trip.data() as Map<String, dynamic>);
              //final collection = await _firestore.collection('Drivers').get();
              //final List<Driver> drivers = [];
              /*for (int i = 0; i < collection.docs.length; i++) {
                final driver = Driver.fromJson(collection.docs[i].data());
                final double distanceInMeters = Geolocator.distanceBetween(
                  driver.location.latitude,
                  driver.location.longitude,
                  fromLocation.latitude,
                  fromLocation.longitude,
                );
                print(distanceInMeters);
                if (distanceInMeters < 5000) {
                  print(collection.docs[i].data());*/
              // final _random = Random();
              //print(drivers[0].token);

              var result = await http.post(
                Uri.parse('https://fcm.googleapis.com/fcm/send'),
                headers: <String, String>{
                  'Content-Type': 'application/json',
                  'Authorization':
                      'key=AAAAtkSxkLY:APA91bHOlrex0qaaw97CsSVnpq843r6KN9QslYoPVdRkc8Xl0SLdtkkmXjULa1ucIo-iKOkC7IiqmiTv-6UPE9Vwi6M7-HJ_AvWVMK10bMyEynPCWb_P6e1Gg3BXipabXto3_lyHXkF8',
                },
                body: jsonEncode(
                  <String, dynamic>{
                    'notification': <String, dynamic>{
                      'body': "Hello New Request Arrive on dirm ",
                      'title': 'New Request Arrive'
                    },
                    'priority': 'high',
                    'data': <String, dynamic>{
                      'click_action': 'FLUTTER_NOTIFICATION_CLICK',
                      'id': id,
                      'status': 'done'
                    },
                    "to": driver.token,
                    // "eq2Lg1xdSEuW6DwIuBmeG1:APA91bGOujp20RedyVoRZoVte83MqADjKhU7L5eFIRyWverGQ3i_J33odJN_p9D8kUWy9mVk44-frSAc3M0HWrn5v-mgPx0t8iwp1jsIyxQx3tbOPguMEuBsBHOfDu6AkDbN7L_O-PFj",
                  },
                ),
              );
              print(driver.token);
              print(driver.name);
              print(result.body);
              /*   print(result.body);
                } else {
                  continue;
                }
              }*/
              return right(requestModel);
            } else {
              return left(const RequestFailure.serverError());
            }
          } else {
            return left(const RequestFailure.serverError());
          }
        }
      } else {
        return left(const RequestFailure.unavailable());
      }
    } on FirebaseAuthException catch (e) {
      print(e);
      return left(const RequestFailure.serverError());
    }

    return left(const RequestFailure.serverError());
  }

  @override
  Stream<DocumentSnapshot<Map<String, dynamic>>> getTrip({
    required String id,
  }) async* {
    print(id);
    final collection = _firestore.collection('Trips').doc(id).snapshots();

    yield* collection;
  }

  @override
  Stream<DocumentSnapshot<Map<String, dynamic>>> getDriver({
    required String id,
  }) async* {
    final collection = _firestore.collection('Drivers').doc(id).snapshots();

    yield* collection;
  }

  @override
  Stream<List<DocumentSnapshot<Map<String, dynamic>>>> getDrivers({
    required LatLng location,
  }) async* {
// Create a geoFirePoint
    GeoFirePoint center = geo.point(
      latitude: location.latitude,
      longitude: location.longitude,
    );

    print({
      location.latitude,
      location.longitude,
    });

// get the collection reference or query
    final query = _firestore.collection('Drivers');
    final collectionReference = query
        .where('online', isEqualTo: true)
        .where('isBooked', isEqualTo: false);

    const double radius = 5;
    const String field = 'position';

    final Stream<List<DocumentSnapshot<Map<String, dynamic>>>> stream = geo
        .collection(collectionRef: collectionReference)
        .within(center: center, radius: radius, field: field, strictMode: true);

    print(stream);

    yield* stream;
  }
}
