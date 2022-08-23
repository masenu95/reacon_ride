import 'package:reacon_customer/domain/track/driver_model.dart';

class UserModel {
  final String uid;
  final String name;
  final String phone;
  final String email;
  final String profile;
  final DriverModel driver;

  UserModel({
    required this.uid,
    required this.name,
    required this.phone,
    required this.email,
    required this.profile,
    required this.driver,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      uid: json['id'].toString(),
      name: json['name'].toString(),
      phone: json['phone'].toString(),
      email: json['email'].toString(),
      profile: (json['profile'] ?? "").toString(),
      driver: DriverModel.fromJson(json['driver'] as Map<String, dynamic>),
    );
  }
}
