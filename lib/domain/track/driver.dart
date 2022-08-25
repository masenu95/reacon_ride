import 'package:cloud_firestore/cloud_firestore.dart';

class Driver {
  final String email;
  final String phone;
  final String name;
  final String vehicleColor;
  final String vehicleManufacture;
  final String vehicleNo;
  final GeoPoint location;
  final String token;
  //final bool isBooked;
  //final bool isOnline;

  Driver({
    required this.email,
    required this.phone,
    required this.name,
    required this.vehicleColor,
    required this.vehicleManufacture,
    required this.vehicleNo,
    required this.location,
    required this.token,
    //required this.isBooked,
    //required this.isOnline,
  });
  factory Driver.fromJson(Map<String, dynamic> data) {
    return Driver(
      email: data['email'].toString(),
      phone: data['phone'].toString(),
      name: data['name'].toString(),
      vehicleColor: data['vehicle_color'].toString(),
      vehicleManufacture: data['vehicle_manufacture'].toString(),
      vehicleNo: data['vehicle_no'].toString(),
      location: data['geopoint'] as GeoPoint,
      token: data['token'].toString(),
      //isBooked: data['isBooked'] as bool,
      //isOnline: data['online'] as bool,
    );
  }
}
