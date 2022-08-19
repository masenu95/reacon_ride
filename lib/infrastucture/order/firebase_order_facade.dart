import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:reacon_customer/domain/auth/user.dart';
import 'package:reacon_customer/domain/order/bus.dart';
import 'package:reacon_customer/domain/order/i_order_facade.dart';
import 'package:reacon_customer/domain/order/order.dart';
import 'package:reacon_customer/domain/order/order_failure.dart';
import 'package:reacon_customer/domain/order/restaurant.dart';
import 'package:reacon_customer/domain/order/route.dart';
import 'package:reacon_customer/domain/order/travel_order.dart';

@LazySingleton(as: IOrderFacade)
class FirebaseOrderFacade implements IOrderFacade {
  final FirebaseFirestore _firestore;
  final FirebaseMessaging _messaging;

  FirebaseOrderFacade(this._firestore, this._messaging);

  @override
  Future<Either<OrderFailure, OrderModel>> createOrder({
    required GeoPoint geoPoint,
    required String food,
    required String price,
    required String image,
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
          await _firestore.collection('Orders').doc(id).set({
            'customer': user.name,
            'phone': user.phone,
            'uid': user.uid,
            'token': token,
            'id': id,
            'food': food,
            'image': image,
            'price': double.parse(price),
            'destination': geoPoint,
            'destinationName':'address.first.addressLine',
            'quantity':1,
            'status': 'REQUESTING',
            'transportFee':0,
            'created_at':myTimeStamp.toDate(),
          });

          final order = await _firestore.collection('Orders').doc(id).get();

          if (order.data() != null) {
            final orderModel =
                OrderModel.fromJson(order.data() as Map<String, dynamic>);
            final collection = await _firestore.collection('Restaurants').get();
            final List<RestaurantModel> restaurants = [];
            for (int i = 0; i < collection.docs.length; i++) {
              final restaurant =
                  RestaurantModel.fromJson(collection.docs[i].data());
              final double distanceInMeters = Geolocator.distanceBetween(
                restaurant.location.latitude,
                restaurant.location.longitude,
                geoPoint.latitude,
                geoPoint.longitude,
              );
              print(distanceInMeters);
              if (distanceInMeters < 50000) {
                return right(orderModel);
              } else {
                await _firestore
                    .collection('Users')
                    .doc(user.uid)
                    .collection('orders')
                    .doc(order.id)
                    .delete();
                return left(const OrderFailure.unavailable());
              }
            }
          } else {
            return left(OrderFailure.serverError());
          }
        } else {
          return left(const OrderFailure.serverError());
        }
      }
    } on FirebaseAuthException catch (e) {
      return left(const OrderFailure.serverError());
    }

    return left(const OrderFailure.serverError());
  }

  @override
  Future<Either<OrderFailure, List<BusModel>>> getBuses() async {
    try {
      final result = await _firestore.collection('buses').get();
      final List<BusModel> buses = [];
      buses.addAll(
        result.docs.map(
          (e) => BusModel.fromJson(
            e.data(),
          ),
        ),
      );
      return right(buses);
    } on FirebaseFirestore catch (e) {
      return left(const OrderFailure.serverError());
    }
  }

  @override
  Future<Either<OrderFailure, List<RouteModel>>> getRoute() async {
    try {
      final result = await _firestore.collection('routes').get();
      final List<RouteModel> routes = [];
      routes.addAll(
        result.docs.map(
          (e) => RouteModel.fromJson(
            e.data(),
          ),
        ),
      );
      return right(routes);
    } on FirebaseFirestore catch (e) {
      return left(const OrderFailure.serverError());
    }
  }

  @override
  Future<Either<OrderFailure, TravelOrderModel>> createTravelOrder({
    required String food,
    required String bus,
    required String route,
    required String busNumber,
    required String departureTime,
    required String price,
    required String image,
  }) async {
    try {
      final User? firebaseUser = await FirebaseAuth.instance.currentUser;
      if (firebaseUser != null) {
        final userSnapshot =
            await _firestore.collection('users').doc(firebaseUser.uid).get();
        if (userSnapshot.data() != null) {
          final UserModel user = UserModel.fromJson(
              json: userSnapshot.data() as Map<String, dynamic>,
              id: userSnapshot.id);
          final String id =
              '${user.uid}${DateTime.now().millisecondsSinceEpoch}';
          await _firestore.collection('TravelOrders').doc(id).set({
            'customer': user.name,
            'phone': user.phone,
            'uid': user.uid,
            'id': id,
            'route': route,
            'bus': bus,
            'busNo': busNumber,
            'departureTime': departureTime,
            'food': food,
            'image': image,
            'price': price,
            'quantity':1,
            'status': 'REQUESTING',
          });

          final order = await _firestore.collection('TravelOrders').doc(id).get();

          if (order.data() != null) {

            return right(TravelOrderModel.fromJson(
                order.data() as Map<String, dynamic>));
          } else {
            return left(OrderFailure.serverError());
          }
        } else {
          return left(const OrderFailure.serverError());
        }
      }
    } on FirebaseAuthException catch (e) {
      return left(const OrderFailure.serverError());
    }
    return left(const OrderFailure.serverError());
  }

  @override
  Future<Either<OrderFailure, OrderModel>> request(
      {required OrderModel order}) {
    // TODO: implement request
    throw UnimplementedError();
  }
}

getAddressFromLatLng( double lat, double lng) async {
  final String _host = 'https://maps.google.com/maps/api/geocode/json';
  final url = '$_host?key=AIzaSyCLVBTXGiIsdiyWUzZOYtbaGw_h-2mn0iI&language=en&latlng=$lat,$lng';
  if(lat != null && lng != null){
    final response = await http.get(Uri.parse(url));
    if(response.statusCode == 200) {
      final Map data = jsonDecode(response.body) as Map;
      final String _formattedAddress = data["results"][0]["formatted_address"].toString();
      print("response ==== $_formattedAddress");
      return _formattedAddress;
    } else return null;
  } else return null;
}
