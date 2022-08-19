import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:reacon_customer/domain/order/bus.dart';
import 'package:reacon_customer/domain/order/order.dart';
import 'package:reacon_customer/domain/order/order_failure.dart';
import 'package:reacon_customer/domain/order/route.dart';
import 'package:reacon_customer/domain/order/travel_order.dart';

abstract class IOrderFacade {
  Future<Either<OrderFailure, OrderModel>> createOrder({
    required GeoPoint geoPoint,
    required String food,
    required String price,
    required String image,
  });

  Future<Either<OrderFailure, TravelOrderModel>> createTravelOrder({
    required String food,
    required String bus,
    required String route,
    required String busNumber,
    required String departureTime,
    required String price,
    required String image,
  });

  Future<Either<OrderFailure, OrderModel>> request({
    required OrderModel order,
  });

  Future<Either<OrderFailure, List<RouteModel>>> getRoute();

  Future<Either<OrderFailure, List<BusModel>>> getBuses();
}
