import 'package:cloud_firestore/cloud_firestore.dart';

class OrderModel {
  final String customer;
  final String phone;
  final String foodName;
  final double price;
  final String status;
  final GeoPoint customerLocation;
  final String uid;
  final String id;
  final String image;
  final String destinationName;
  final int quantity;
  final int transport;


  OrderModel({
    required this.customer,
    required this.phone,
    required this.uid,
    required this.id,
    required this.foodName,
    required this.price,
    required this.status,
    required this.image,
    required this.customerLocation,
    required this.destinationName,
    required this.quantity,
    required this.transport,

  });

  factory OrderModel.fromJson(Map<String, dynamic> json) {
    return OrderModel(
      customer: json['customer'] as String,
      phone: json['phone'] as String,
      foodName: json['food'] as String,
      price: json['price'] as double,
      status: json['status'] as String,
      customerLocation: json['destination'] as GeoPoint,
      uid: json['uid'] as String,
      id: json['id'] as String,
      image: json['image'] as String,
      destinationName: json['destinationName'] as String,
      quantity: json['quantity'] as int,
      transport: json['transportFee'] as int,
    );
  }
}
