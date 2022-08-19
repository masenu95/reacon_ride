import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_geocoding/google_geocoding.dart';
import 'package:injectable/injectable.dart';
import 'package:reacon_customer/domain/food/Food.dart';
import 'package:reacon_customer/domain/order/bus.dart';
import 'package:reacon_customer/domain/order/i_order_facade.dart';
import 'package:reacon_customer/domain/order/order.dart';
import 'package:reacon_customer/domain/order/order_failure.dart';
import 'package:reacon_customer/domain/order/route.dart';
import 'package:reacon_customer/domain/order/travel_order.dart';

part 'order_bloc.freezed.dart';
part 'order_event.dart';
part 'order_state.dart';

@injectable
class OrderBloc extends Bloc<OrderEvent, OrderState> {
  OrderBloc(this._iOrderFacade) : super(OrderState.initial());
  final IOrderFacade _iOrderFacade;
  final _firestore = FirebaseFirestore.instance;

  @override
  Stream<OrderState> mapEventToState(
    OrderEvent event,
  ) async* {
    yield* event.map(
      createOrder: (e) async* {
        yield state.copyWith(
          loading: true,
        );
        bool serviceEnabled;
        LocationPermission permission;

        // Test if location services are enabled.
        serviceEnabled = await Geolocator.isLocationServiceEnabled();
        if (!serviceEnabled) {}

        permission = await Geolocator.checkPermission();
        if (permission == LocationPermission.denied) {
          permission = await Geolocator.requestPermission();
          if (permission == LocationPermission.denied) {}
        }

        if (permission == LocationPermission.deniedForever) {
          // Permissions are denied forever, handle appropriately.

        }

        Position position = await Geolocator.getCurrentPosition();
        GeoPoint geoPoint = GeoPoint(position.latitude, position.longitude);

        final Either<OrderFailure, OrderModel> result =
            await _iOrderFacade.createOrder(
          geoPoint: geoPoint,
          food: e.food.title,
          price: e.food.price,
          image: e.food.image,
        );
        print(result);

        OrderModel order = OrderModel(
          customer: '',
          phone: '',
          foodName: '',
          price: 0,
          image: '',
          status: '',
          customerLocation: GeoPoint(0, 0),
          id: '',
          uid: '',
          destinationName: '',
          quantity: 0,
          transport: 0,
        );

        result.fold(
          (l) => null,
          (r) => order = r,
        );
        yield state.copyWith(originPrice: order.price);

        if (order.customer != '') {
          add(OrderEvent.request(order));
          add(
            OrderEvent.address(order.customerLocation),

          );
        } else {
          yield state.copyWith(
            order0ption: optionOf(result),
          );
        }
      },
      request: (e) async* {
        yield state.copyWith(
          loading: true,
        );

        final orderDoc = await _firestore.collection('Orders').doc(e.order.id);
        orderDoc.snapshots().listen((event) {
          OrderModel result =
              OrderModel.fromJson(event.data() as Map<String, dynamic>);
          add(OrderEvent.orderReceived(result));
        });
      },
      getRoutes: (e) async* {
        yield state.copyWith(
          loading: true,
        );
        List<RouteModel> routes = [];
        final result = await _iOrderFacade.getRoute();
        result.fold((l) => null, (r) => routes = r);
        yield state.copyWith(loading: true, routes: routes);
      },
      routesChange: (e) async* {
        yield state.copyWith(route: e.route);
      },
      getBuses: (e) async* {
        yield state.copyWith(
          loading: true,
        );
        List<BusModel> buses = [];
        final result = await _iOrderFacade.getBuses();
        result.fold((l) => null, (r) => buses = r);
        yield state.copyWith(
          loading: true,
          buses: buses,
        );
      },
      busesChange: (e) async* {
        yield state.copyWith(
          bus: e.bus,
        );
      },
      orderReceived: (e) async* {
        yield state.copyWith(
          loading: false,
          order: e.order,
        );

      },
      orderUpdateQuantity: (e) async* {
        print(state.originPrice);
        if (e.action == 'plus') {
          int quantity = state.order.quantity + 1;
          double price = state.originPrice * quantity;
          OrderModel order = OrderModel(
            customer: state.order.customer,
            phone: state.order.phone,
            uid: state.order.uid,
            id: state.order.id,
            foodName: state.order.foodName,
            price: price,
            status: state.order.status,
            image: state.order.image,
            customerLocation: state.order.customerLocation,
            destinationName: state.order.destinationName,
            quantity: quantity,
            transport: state.order.transport,
          );
          yield state.copyWith(order: order);
        } else {
          if (state.order.quantity > 1) {
            int quantity = state.order.quantity - 1;
            double price = state.originPrice * quantity;
            OrderModel order = OrderModel(
              customer: state.order.customer,
              phone: state.order.phone,
              uid: state.order.uid,
              id: state.order.id,
              foodName: state.order.foodName,
              price: price,
              status: state.order.status,
              image: state.order.image,
              customerLocation: state.order.customerLocation,
              destinationName: state.order.destinationName,
              quantity: quantity,
              transport: state.order.transport,
            );

            yield state.copyWith(order: order);
          }
        }
      },
      createTravelOrder: (e) async* {
        yield state.copyWith(
          loading: true,
        );

        final Either<OrderFailure, TravelOrderModel> result =
            await _iOrderFacade.createTravelOrder(
          price: e.order.price,
          departureTime: '',
          route: state.route.name,
          food: e.order.title,
          busNumber: state.busNo,
          image: e.order.image,
          bus: state.bus.name,
        );
        print(result);

        TravelOrderModel order = TravelOrderModel(
          customer: '',
          phone: '',
          foodName: '',
          price: 0,
          image: '',
          status: '',
          id: '',
          uid: '',
          quantity: 0,
          route: '',
          departureTime: '',
          busNo: '',
          bus: '',
        );

        result.fold(
          (l) => null,
          (r) => order = r,
        );
        yield state.copyWith(originPrice: order.price);

        if (order.customer != '') {
          add(OrderEvent.travelRequest(order));
        } else {
          yield state.copyWith(
            travelOrderOption: optionOf(result),
          );
        }
      },
      travelRequest: (e) async* {
        yield state.copyWith(
          loading: true,
        );

        final orderDoc =
            await _firestore.collection('TravelOrders').doc(e.order.id);
        orderDoc.snapshots().listen((event) {
          TravelOrderModel result =
              TravelOrderModel.fromJson(event.data() as Map<String, dynamic>);
          add(OrderEvent.travelOrderReceived(result));
        });
      },
      travelOrderReceived: (e) async* {
        yield state.copyWith(
          loading: false,
          travelOrder: e.order,
        );
      },
      address: (e) async* {
        String address = 'Unkown Place';
        final googleGeocoding =
            GoogleGeocoding("AIzaSyAa0dx-ZwvNj3qd6i3MROEgKUITgJMCE8g");
        final result = await googleGeocoding.geocoding
            .getReverse(LatLon(e.point.latitude, e.point.longitude));
        if (result != null && result.results != null) {
          final formattedAddress = result.results?[0].formattedAddress;
          if (formattedAddress != null) {
            address = formattedAddress;
          }
        }
        yield state.copyWith(
          address: address,
        );
      },
    );
  }
}
