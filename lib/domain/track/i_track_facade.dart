import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:reacon_customer/domain/track/distance.dart';
import 'package:reacon_customer/domain/track/driver.dart';
import 'package:reacon_customer/domain/track/request.dart';
import 'package:reacon_customer/domain/track/request_failure.dart';

abstract class ITrackFacade {
  Future<Distance> getDirectionDistance({
    required LatLng origin,
    required LatLng destination,
  });
  Future<Either<RequestFailure, RequestModel>> createRequest({
    required GeoPoint fromLocation,
    required GeoPoint toLocation,
    required String status,
    required String fromName,
    required String toName,
    required String estimatedCost,
    required String actualCost,
    required List<Driver> drivers,
  });
  Stream<DocumentSnapshot<Map<String, dynamic>>> getTrip({
    required String id,
  });
  Stream<DocumentSnapshot<Map<String, dynamic>>> getDriver({
    required String id,
  });

  Stream<List<DocumentSnapshot<Map<String, dynamic>>>> getDrivers({
    required LatLng location,
  });
}
