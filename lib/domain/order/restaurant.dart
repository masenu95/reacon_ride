import 'package:cloud_firestore/cloud_firestore.dart';

class RestaurantModel {
  final GeoPoint location;
  final String uid;
  final String token;

  RestaurantModel({
    required this.location,
    required this.uid,
    required this.token,
  });

  factory RestaurantModel.fromJson(Map<String, dynamic> json) {
    return RestaurantModel(
      location: json['geopoint'] as GeoPoint,
      uid: json['user_id'] as String,
      token: json['token'] as String,
    );
  }
}
