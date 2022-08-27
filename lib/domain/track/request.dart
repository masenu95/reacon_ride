import 'package:cloud_firestore/cloud_firestore.dart';

class RequestModel {
  final GeoPoint fromLocation;
  final GeoPoint toLocation;
  final String userId;
  final String customerName;
  final String customerPhone;
  final String status;
  final String estimatedCost;

  final String actualCost;
  final String from;
  final String to;
  final String driverId;
  final String id;

  RequestModel({
    required this.fromLocation,
    required this.toLocation,
    required this.userId,
    required this.customerName,
    required this.customerPhone,
    required this.status,
    required this.estimatedCost,
    required this.actualCost,
    required this.driverId,
    required this.from,
    required this.to,
    required this.id,
  });

  factory RequestModel.fromJson(Map<String, dynamic> data) {
    return RequestModel(
      fromLocation: data['fromLocation'] as GeoPoint,
      toLocation: data['toLocation'] as GeoPoint,
      userId: data['userId'].toString(),
      customerName: data['customer'].toString(),
      customerPhone: data['phone'].toString(),
      status: data['status'].toString(),
      estimatedCost: data['estimatedCost'].toString(),
      actualCost: data['actualCost'].toString(),
      driverId: (data['driverId'] ?? '').toString(),
      from: (data['fromName'] ?? '').toString(),
      to: (data['toName'] ?? '').toString(),
      id: data['id'].toString(),
    );
  }
}
