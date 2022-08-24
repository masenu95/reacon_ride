import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:reacon_customer/application/order/order_bloc.dart';
import 'package:reacon_customer/domain/auth/user.dart';
import 'package:reacon_customer/domain/track/distance.dart';
import 'package:reacon_customer/domain/track/driver.dart';
import 'package:reacon_customer/domain/track/driver_model.dart';
import 'package:reacon_customer/domain/track/i_track_facade.dart';
import 'package:reacon_customer/domain/track/request.dart';
import 'package:reacon_customer/domain/track/request_failure.dart';
import 'package:reacon_customer/infrastucture/core/constant.dart';

@LazySingleton(as: ITrackFacade)
class ApiTrackFacade implements ITrackFacade {
  final FirebaseFirestore _firestore;
  final FirebaseMessaging _messaging;

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
  }) async {
    try {
      final User? firebaseUser = FirebaseAuth.instance.currentUser;
      if (firebaseUser != null) {
        final userSnapshot =
            await _firestore.collection('Users').doc(firebaseUser.uid).get();

        if (userSnapshot.data() != null) {
          final UserModel user = UserModel.fromJson(
              json: userSnapshot.data() as Map<String, dynamic>,
              id: userSnapshot.id);

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
            final collection = await _firestore.collection('Drivers').get();
            final List<Driver> drivers = [];
            for (int i = 0; i < collection.docs.length; i++) {
              final driver = Driver.fromJson(collection.docs[i].data());
              final double distanceInMeters = Geolocator.distanceBetween(
                driver.location.latitude,
                driver.location.longitude,
                fromLocation.latitude,
                fromLocation.longitude,
              );
              print(distanceInMeters);
              if (distanceInMeters < 50000) {
                return right(requestModel);
              } else {
                await _firestore.collection('Trips').doc(trip.id).delete();
                return left(const RequestFailure.unavailable());
              }
            }
          } else {
            return left(const RequestFailure.serverError());
          }
        } else {
          return left(const RequestFailure.serverError());
        }
      }
    } on FirebaseAuthException catch (e) {
      return left(const RequestFailure.serverError());
    }

    return left(const RequestFailure.serverError());
  }

  @override
  Stream<Either<RequestFailure, RequestModel>> getTrip(
      {required String id}) async* {
    UnimplementedError();
  }
}
