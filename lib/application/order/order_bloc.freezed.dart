// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OrderEventTearOff {
  const _$OrderEventTearOff();

  CreateOrder createOrder(FoodModel food) {
    return CreateOrder(
      food,
    );
  }

  CreateTravelOrder createTravelOrder(FoodModel order) {
    return CreateTravelOrder(
      order,
    );
  }

  Request request(OrderModel order) {
    return Request(
      order,
    );
  }

  TravelRequest travelRequest(TravelOrderModel order) {
    return TravelRequest(
      order,
    );
  }

  GetBuses getBuses() {
    return const GetBuses();
  }

  BusesChange busesChange(BusModel bus) {
    return BusesChange(
      bus,
    );
  }

  GetRoutes getRoutes() {
    return const GetRoutes();
  }

  RoutesChange routesChange(RouteModel route) {
    return RoutesChange(
      route,
    );
  }

  OrderReceived orderReceived(OrderModel order) {
    return OrderReceived(
      order,
    );
  }

  TravelOrderReceived travelOrderReceived(TravelOrderModel order) {
    return TravelOrderReceived(
      order,
    );
  }

  OrderUpdateQuantity orderUpdateQuantity(String action) {
    return OrderUpdateQuantity(
      action,
    );
  }

  Address address(GeoPoint point) {
    return Address(
      point,
    );
  }
}

/// @nodoc
const $OrderEvent = _$OrderEventTearOff();

/// @nodoc
mixin _$OrderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FoodModel food) createOrder,
    required TResult Function(FoodModel order) createTravelOrder,
    required TResult Function(OrderModel order) request,
    required TResult Function(TravelOrderModel order) travelRequest,
    required TResult Function() getBuses,
    required TResult Function(BusModel bus) busesChange,
    required TResult Function() getRoutes,
    required TResult Function(RouteModel route) routesChange,
    required TResult Function(OrderModel order) orderReceived,
    required TResult Function(TravelOrderModel order) travelOrderReceived,
    required TResult Function(String action) orderUpdateQuantity,
    required TResult Function(GeoPoint point) address,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FoodModel food)? createOrder,
    TResult Function(FoodModel order)? createTravelOrder,
    TResult Function(OrderModel order)? request,
    TResult Function(TravelOrderModel order)? travelRequest,
    TResult Function()? getBuses,
    TResult Function(BusModel bus)? busesChange,
    TResult Function()? getRoutes,
    TResult Function(RouteModel route)? routesChange,
    TResult Function(OrderModel order)? orderReceived,
    TResult Function(TravelOrderModel order)? travelOrderReceived,
    TResult Function(String action)? orderUpdateQuantity,
    TResult Function(GeoPoint point)? address,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FoodModel food)? createOrder,
    TResult Function(FoodModel order)? createTravelOrder,
    TResult Function(OrderModel order)? request,
    TResult Function(TravelOrderModel order)? travelRequest,
    TResult Function()? getBuses,
    TResult Function(BusModel bus)? busesChange,
    TResult Function()? getRoutes,
    TResult Function(RouteModel route)? routesChange,
    TResult Function(OrderModel order)? orderReceived,
    TResult Function(TravelOrderModel order)? travelOrderReceived,
    TResult Function(String action)? orderUpdateQuantity,
    TResult Function(GeoPoint point)? address,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateOrder value) createOrder,
    required TResult Function(CreateTravelOrder value) createTravelOrder,
    required TResult Function(Request value) request,
    required TResult Function(TravelRequest value) travelRequest,
    required TResult Function(GetBuses value) getBuses,
    required TResult Function(BusesChange value) busesChange,
    required TResult Function(GetRoutes value) getRoutes,
    required TResult Function(RoutesChange value) routesChange,
    required TResult Function(OrderReceived value) orderReceived,
    required TResult Function(TravelOrderReceived value) travelOrderReceived,
    required TResult Function(OrderUpdateQuantity value) orderUpdateQuantity,
    required TResult Function(Address value) address,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateOrder value)? createOrder,
    TResult Function(CreateTravelOrder value)? createTravelOrder,
    TResult Function(Request value)? request,
    TResult Function(TravelRequest value)? travelRequest,
    TResult Function(GetBuses value)? getBuses,
    TResult Function(BusesChange value)? busesChange,
    TResult Function(GetRoutes value)? getRoutes,
    TResult Function(RoutesChange value)? routesChange,
    TResult Function(OrderReceived value)? orderReceived,
    TResult Function(TravelOrderReceived value)? travelOrderReceived,
    TResult Function(OrderUpdateQuantity value)? orderUpdateQuantity,
    TResult Function(Address value)? address,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateOrder value)? createOrder,
    TResult Function(CreateTravelOrder value)? createTravelOrder,
    TResult Function(Request value)? request,
    TResult Function(TravelRequest value)? travelRequest,
    TResult Function(GetBuses value)? getBuses,
    TResult Function(BusesChange value)? busesChange,
    TResult Function(GetRoutes value)? getRoutes,
    TResult Function(RoutesChange value)? routesChange,
    TResult Function(OrderReceived value)? orderReceived,
    TResult Function(TravelOrderReceived value)? travelOrderReceived,
    TResult Function(OrderUpdateQuantity value)? orderUpdateQuantity,
    TResult Function(Address value)? address,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderEventCopyWith<$Res> {
  factory $OrderEventCopyWith(
          OrderEvent value, $Res Function(OrderEvent) then) =
      _$OrderEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$OrderEventCopyWithImpl<$Res> implements $OrderEventCopyWith<$Res> {
  _$OrderEventCopyWithImpl(this._value, this._then);

  final OrderEvent _value;
  // ignore: unused_field
  final $Res Function(OrderEvent) _then;
}

/// @nodoc
abstract class $CreateOrderCopyWith<$Res> {
  factory $CreateOrderCopyWith(
          CreateOrder value, $Res Function(CreateOrder) then) =
      _$CreateOrderCopyWithImpl<$Res>;
  $Res call({FoodModel food});
}

/// @nodoc
class _$CreateOrderCopyWithImpl<$Res> extends _$OrderEventCopyWithImpl<$Res>
    implements $CreateOrderCopyWith<$Res> {
  _$CreateOrderCopyWithImpl(
      CreateOrder _value, $Res Function(CreateOrder) _then)
      : super(_value, (v) => _then(v as CreateOrder));

  @override
  CreateOrder get _value => super._value as CreateOrder;

  @override
  $Res call({
    Object? food = freezed,
  }) {
    return _then(CreateOrder(
      food == freezed
          ? _value.food
          : food // ignore: cast_nullable_to_non_nullable
              as FoodModel,
    ));
  }
}

/// @nodoc

class _$CreateOrder implements CreateOrder {
  const _$CreateOrder(this.food);

  @override
  final FoodModel food;

  @override
  String toString() {
    return 'OrderEvent.createOrder(food: $food)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateOrder &&
            (identical(other.food, food) ||
                const DeepCollectionEquality().equals(other.food, food)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(food);

  @JsonKey(ignore: true)
  @override
  $CreateOrderCopyWith<CreateOrder> get copyWith =>
      _$CreateOrderCopyWithImpl<CreateOrder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FoodModel food) createOrder,
    required TResult Function(FoodModel order) createTravelOrder,
    required TResult Function(OrderModel order) request,
    required TResult Function(TravelOrderModel order) travelRequest,
    required TResult Function() getBuses,
    required TResult Function(BusModel bus) busesChange,
    required TResult Function() getRoutes,
    required TResult Function(RouteModel route) routesChange,
    required TResult Function(OrderModel order) orderReceived,
    required TResult Function(TravelOrderModel order) travelOrderReceived,
    required TResult Function(String action) orderUpdateQuantity,
    required TResult Function(GeoPoint point) address,
  }) {
    return createOrder(food);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FoodModel food)? createOrder,
    TResult Function(FoodModel order)? createTravelOrder,
    TResult Function(OrderModel order)? request,
    TResult Function(TravelOrderModel order)? travelRequest,
    TResult Function()? getBuses,
    TResult Function(BusModel bus)? busesChange,
    TResult Function()? getRoutes,
    TResult Function(RouteModel route)? routesChange,
    TResult Function(OrderModel order)? orderReceived,
    TResult Function(TravelOrderModel order)? travelOrderReceived,
    TResult Function(String action)? orderUpdateQuantity,
    TResult Function(GeoPoint point)? address,
  }) {
    return createOrder?.call(food);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FoodModel food)? createOrder,
    TResult Function(FoodModel order)? createTravelOrder,
    TResult Function(OrderModel order)? request,
    TResult Function(TravelOrderModel order)? travelRequest,
    TResult Function()? getBuses,
    TResult Function(BusModel bus)? busesChange,
    TResult Function()? getRoutes,
    TResult Function(RouteModel route)? routesChange,
    TResult Function(OrderModel order)? orderReceived,
    TResult Function(TravelOrderModel order)? travelOrderReceived,
    TResult Function(String action)? orderUpdateQuantity,
    TResult Function(GeoPoint point)? address,
    required TResult orElse(),
  }) {
    if (createOrder != null) {
      return createOrder(food);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateOrder value) createOrder,
    required TResult Function(CreateTravelOrder value) createTravelOrder,
    required TResult Function(Request value) request,
    required TResult Function(TravelRequest value) travelRequest,
    required TResult Function(GetBuses value) getBuses,
    required TResult Function(BusesChange value) busesChange,
    required TResult Function(GetRoutes value) getRoutes,
    required TResult Function(RoutesChange value) routesChange,
    required TResult Function(OrderReceived value) orderReceived,
    required TResult Function(TravelOrderReceived value) travelOrderReceived,
    required TResult Function(OrderUpdateQuantity value) orderUpdateQuantity,
    required TResult Function(Address value) address,
  }) {
    return createOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateOrder value)? createOrder,
    TResult Function(CreateTravelOrder value)? createTravelOrder,
    TResult Function(Request value)? request,
    TResult Function(TravelRequest value)? travelRequest,
    TResult Function(GetBuses value)? getBuses,
    TResult Function(BusesChange value)? busesChange,
    TResult Function(GetRoutes value)? getRoutes,
    TResult Function(RoutesChange value)? routesChange,
    TResult Function(OrderReceived value)? orderReceived,
    TResult Function(TravelOrderReceived value)? travelOrderReceived,
    TResult Function(OrderUpdateQuantity value)? orderUpdateQuantity,
    TResult Function(Address value)? address,
  }) {
    return createOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateOrder value)? createOrder,
    TResult Function(CreateTravelOrder value)? createTravelOrder,
    TResult Function(Request value)? request,
    TResult Function(TravelRequest value)? travelRequest,
    TResult Function(GetBuses value)? getBuses,
    TResult Function(BusesChange value)? busesChange,
    TResult Function(GetRoutes value)? getRoutes,
    TResult Function(RoutesChange value)? routesChange,
    TResult Function(OrderReceived value)? orderReceived,
    TResult Function(TravelOrderReceived value)? travelOrderReceived,
    TResult Function(OrderUpdateQuantity value)? orderUpdateQuantity,
    TResult Function(Address value)? address,
    required TResult orElse(),
  }) {
    if (createOrder != null) {
      return createOrder(this);
    }
    return orElse();
  }
}

abstract class CreateOrder implements OrderEvent {
  const factory CreateOrder(FoodModel food) = _$CreateOrder;

  FoodModel get food => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateOrderCopyWith<CreateOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTravelOrderCopyWith<$Res> {
  factory $CreateTravelOrderCopyWith(
          CreateTravelOrder value, $Res Function(CreateTravelOrder) then) =
      _$CreateTravelOrderCopyWithImpl<$Res>;
  $Res call({FoodModel order});
}

/// @nodoc
class _$CreateTravelOrderCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res>
    implements $CreateTravelOrderCopyWith<$Res> {
  _$CreateTravelOrderCopyWithImpl(
      CreateTravelOrder _value, $Res Function(CreateTravelOrder) _then)
      : super(_value, (v) => _then(v as CreateTravelOrder));

  @override
  CreateTravelOrder get _value => super._value as CreateTravelOrder;

  @override
  $Res call({
    Object? order = freezed,
  }) {
    return _then(CreateTravelOrder(
      order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as FoodModel,
    ));
  }
}

/// @nodoc

class _$CreateTravelOrder implements CreateTravelOrder {
  const _$CreateTravelOrder(this.order);

  @override
  final FoodModel order;

  @override
  String toString() {
    return 'OrderEvent.createTravelOrder(order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateTravelOrder &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(order);

  @JsonKey(ignore: true)
  @override
  $CreateTravelOrderCopyWith<CreateTravelOrder> get copyWith =>
      _$CreateTravelOrderCopyWithImpl<CreateTravelOrder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FoodModel food) createOrder,
    required TResult Function(FoodModel order) createTravelOrder,
    required TResult Function(OrderModel order) request,
    required TResult Function(TravelOrderModel order) travelRequest,
    required TResult Function() getBuses,
    required TResult Function(BusModel bus) busesChange,
    required TResult Function() getRoutes,
    required TResult Function(RouteModel route) routesChange,
    required TResult Function(OrderModel order) orderReceived,
    required TResult Function(TravelOrderModel order) travelOrderReceived,
    required TResult Function(String action) orderUpdateQuantity,
    required TResult Function(GeoPoint point) address,
  }) {
    return createTravelOrder(order);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FoodModel food)? createOrder,
    TResult Function(FoodModel order)? createTravelOrder,
    TResult Function(OrderModel order)? request,
    TResult Function(TravelOrderModel order)? travelRequest,
    TResult Function()? getBuses,
    TResult Function(BusModel bus)? busesChange,
    TResult Function()? getRoutes,
    TResult Function(RouteModel route)? routesChange,
    TResult Function(OrderModel order)? orderReceived,
    TResult Function(TravelOrderModel order)? travelOrderReceived,
    TResult Function(String action)? orderUpdateQuantity,
    TResult Function(GeoPoint point)? address,
  }) {
    return createTravelOrder?.call(order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FoodModel food)? createOrder,
    TResult Function(FoodModel order)? createTravelOrder,
    TResult Function(OrderModel order)? request,
    TResult Function(TravelOrderModel order)? travelRequest,
    TResult Function()? getBuses,
    TResult Function(BusModel bus)? busesChange,
    TResult Function()? getRoutes,
    TResult Function(RouteModel route)? routesChange,
    TResult Function(OrderModel order)? orderReceived,
    TResult Function(TravelOrderModel order)? travelOrderReceived,
    TResult Function(String action)? orderUpdateQuantity,
    TResult Function(GeoPoint point)? address,
    required TResult orElse(),
  }) {
    if (createTravelOrder != null) {
      return createTravelOrder(order);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateOrder value) createOrder,
    required TResult Function(CreateTravelOrder value) createTravelOrder,
    required TResult Function(Request value) request,
    required TResult Function(TravelRequest value) travelRequest,
    required TResult Function(GetBuses value) getBuses,
    required TResult Function(BusesChange value) busesChange,
    required TResult Function(GetRoutes value) getRoutes,
    required TResult Function(RoutesChange value) routesChange,
    required TResult Function(OrderReceived value) orderReceived,
    required TResult Function(TravelOrderReceived value) travelOrderReceived,
    required TResult Function(OrderUpdateQuantity value) orderUpdateQuantity,
    required TResult Function(Address value) address,
  }) {
    return createTravelOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateOrder value)? createOrder,
    TResult Function(CreateTravelOrder value)? createTravelOrder,
    TResult Function(Request value)? request,
    TResult Function(TravelRequest value)? travelRequest,
    TResult Function(GetBuses value)? getBuses,
    TResult Function(BusesChange value)? busesChange,
    TResult Function(GetRoutes value)? getRoutes,
    TResult Function(RoutesChange value)? routesChange,
    TResult Function(OrderReceived value)? orderReceived,
    TResult Function(TravelOrderReceived value)? travelOrderReceived,
    TResult Function(OrderUpdateQuantity value)? orderUpdateQuantity,
    TResult Function(Address value)? address,
  }) {
    return createTravelOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateOrder value)? createOrder,
    TResult Function(CreateTravelOrder value)? createTravelOrder,
    TResult Function(Request value)? request,
    TResult Function(TravelRequest value)? travelRequest,
    TResult Function(GetBuses value)? getBuses,
    TResult Function(BusesChange value)? busesChange,
    TResult Function(GetRoutes value)? getRoutes,
    TResult Function(RoutesChange value)? routesChange,
    TResult Function(OrderReceived value)? orderReceived,
    TResult Function(TravelOrderReceived value)? travelOrderReceived,
    TResult Function(OrderUpdateQuantity value)? orderUpdateQuantity,
    TResult Function(Address value)? address,
    required TResult orElse(),
  }) {
    if (createTravelOrder != null) {
      return createTravelOrder(this);
    }
    return orElse();
  }
}

abstract class CreateTravelOrder implements OrderEvent {
  const factory CreateTravelOrder(FoodModel order) = _$CreateTravelOrder;

  FoodModel get order => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateTravelOrderCopyWith<CreateTravelOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestCopyWith<$Res> {
  factory $RequestCopyWith(Request value, $Res Function(Request) then) =
      _$RequestCopyWithImpl<$Res>;
  $Res call({OrderModel order});
}

/// @nodoc
class _$RequestCopyWithImpl<$Res> extends _$OrderEventCopyWithImpl<$Res>
    implements $RequestCopyWith<$Res> {
  _$RequestCopyWithImpl(Request _value, $Res Function(Request) _then)
      : super(_value, (v) => _then(v as Request));

  @override
  Request get _value => super._value as Request;

  @override
  $Res call({
    Object? order = freezed,
  }) {
    return _then(Request(
      order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderModel,
    ));
  }
}

/// @nodoc

class _$Request implements Request {
  const _$Request(this.order);

  @override
  final OrderModel order;

  @override
  String toString() {
    return 'OrderEvent.request(order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Request &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(order);

  @JsonKey(ignore: true)
  @override
  $RequestCopyWith<Request> get copyWith =>
      _$RequestCopyWithImpl<Request>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FoodModel food) createOrder,
    required TResult Function(FoodModel order) createTravelOrder,
    required TResult Function(OrderModel order) request,
    required TResult Function(TravelOrderModel order) travelRequest,
    required TResult Function() getBuses,
    required TResult Function(BusModel bus) busesChange,
    required TResult Function() getRoutes,
    required TResult Function(RouteModel route) routesChange,
    required TResult Function(OrderModel order) orderReceived,
    required TResult Function(TravelOrderModel order) travelOrderReceived,
    required TResult Function(String action) orderUpdateQuantity,
    required TResult Function(GeoPoint point) address,
  }) {
    return request(order);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FoodModel food)? createOrder,
    TResult Function(FoodModel order)? createTravelOrder,
    TResult Function(OrderModel order)? request,
    TResult Function(TravelOrderModel order)? travelRequest,
    TResult Function()? getBuses,
    TResult Function(BusModel bus)? busesChange,
    TResult Function()? getRoutes,
    TResult Function(RouteModel route)? routesChange,
    TResult Function(OrderModel order)? orderReceived,
    TResult Function(TravelOrderModel order)? travelOrderReceived,
    TResult Function(String action)? orderUpdateQuantity,
    TResult Function(GeoPoint point)? address,
  }) {
    return request?.call(order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FoodModel food)? createOrder,
    TResult Function(FoodModel order)? createTravelOrder,
    TResult Function(OrderModel order)? request,
    TResult Function(TravelOrderModel order)? travelRequest,
    TResult Function()? getBuses,
    TResult Function(BusModel bus)? busesChange,
    TResult Function()? getRoutes,
    TResult Function(RouteModel route)? routesChange,
    TResult Function(OrderModel order)? orderReceived,
    TResult Function(TravelOrderModel order)? travelOrderReceived,
    TResult Function(String action)? orderUpdateQuantity,
    TResult Function(GeoPoint point)? address,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request(order);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateOrder value) createOrder,
    required TResult Function(CreateTravelOrder value) createTravelOrder,
    required TResult Function(Request value) request,
    required TResult Function(TravelRequest value) travelRequest,
    required TResult Function(GetBuses value) getBuses,
    required TResult Function(BusesChange value) busesChange,
    required TResult Function(GetRoutes value) getRoutes,
    required TResult Function(RoutesChange value) routesChange,
    required TResult Function(OrderReceived value) orderReceived,
    required TResult Function(TravelOrderReceived value) travelOrderReceived,
    required TResult Function(OrderUpdateQuantity value) orderUpdateQuantity,
    required TResult Function(Address value) address,
  }) {
    return request(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateOrder value)? createOrder,
    TResult Function(CreateTravelOrder value)? createTravelOrder,
    TResult Function(Request value)? request,
    TResult Function(TravelRequest value)? travelRequest,
    TResult Function(GetBuses value)? getBuses,
    TResult Function(BusesChange value)? busesChange,
    TResult Function(GetRoutes value)? getRoutes,
    TResult Function(RoutesChange value)? routesChange,
    TResult Function(OrderReceived value)? orderReceived,
    TResult Function(TravelOrderReceived value)? travelOrderReceived,
    TResult Function(OrderUpdateQuantity value)? orderUpdateQuantity,
    TResult Function(Address value)? address,
  }) {
    return request?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateOrder value)? createOrder,
    TResult Function(CreateTravelOrder value)? createTravelOrder,
    TResult Function(Request value)? request,
    TResult Function(TravelRequest value)? travelRequest,
    TResult Function(GetBuses value)? getBuses,
    TResult Function(BusesChange value)? busesChange,
    TResult Function(GetRoutes value)? getRoutes,
    TResult Function(RoutesChange value)? routesChange,
    TResult Function(OrderReceived value)? orderReceived,
    TResult Function(TravelOrderReceived value)? travelOrderReceived,
    TResult Function(OrderUpdateQuantity value)? orderUpdateQuantity,
    TResult Function(Address value)? address,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request(this);
    }
    return orElse();
  }
}

abstract class Request implements OrderEvent {
  const factory Request(OrderModel order) = _$Request;

  OrderModel get order => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestCopyWith<Request> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelRequestCopyWith<$Res> {
  factory $TravelRequestCopyWith(
          TravelRequest value, $Res Function(TravelRequest) then) =
      _$TravelRequestCopyWithImpl<$Res>;
  $Res call({TravelOrderModel order});
}

/// @nodoc
class _$TravelRequestCopyWithImpl<$Res> extends _$OrderEventCopyWithImpl<$Res>
    implements $TravelRequestCopyWith<$Res> {
  _$TravelRequestCopyWithImpl(
      TravelRequest _value, $Res Function(TravelRequest) _then)
      : super(_value, (v) => _then(v as TravelRequest));

  @override
  TravelRequest get _value => super._value as TravelRequest;

  @override
  $Res call({
    Object? order = freezed,
  }) {
    return _then(TravelRequest(
      order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as TravelOrderModel,
    ));
  }
}

/// @nodoc

class _$TravelRequest implements TravelRequest {
  const _$TravelRequest(this.order);

  @override
  final TravelOrderModel order;

  @override
  String toString() {
    return 'OrderEvent.travelRequest(order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TravelRequest &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(order);

  @JsonKey(ignore: true)
  @override
  $TravelRequestCopyWith<TravelRequest> get copyWith =>
      _$TravelRequestCopyWithImpl<TravelRequest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FoodModel food) createOrder,
    required TResult Function(FoodModel order) createTravelOrder,
    required TResult Function(OrderModel order) request,
    required TResult Function(TravelOrderModel order) travelRequest,
    required TResult Function() getBuses,
    required TResult Function(BusModel bus) busesChange,
    required TResult Function() getRoutes,
    required TResult Function(RouteModel route) routesChange,
    required TResult Function(OrderModel order) orderReceived,
    required TResult Function(TravelOrderModel order) travelOrderReceived,
    required TResult Function(String action) orderUpdateQuantity,
    required TResult Function(GeoPoint point) address,
  }) {
    return travelRequest(order);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FoodModel food)? createOrder,
    TResult Function(FoodModel order)? createTravelOrder,
    TResult Function(OrderModel order)? request,
    TResult Function(TravelOrderModel order)? travelRequest,
    TResult Function()? getBuses,
    TResult Function(BusModel bus)? busesChange,
    TResult Function()? getRoutes,
    TResult Function(RouteModel route)? routesChange,
    TResult Function(OrderModel order)? orderReceived,
    TResult Function(TravelOrderModel order)? travelOrderReceived,
    TResult Function(String action)? orderUpdateQuantity,
    TResult Function(GeoPoint point)? address,
  }) {
    return travelRequest?.call(order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FoodModel food)? createOrder,
    TResult Function(FoodModel order)? createTravelOrder,
    TResult Function(OrderModel order)? request,
    TResult Function(TravelOrderModel order)? travelRequest,
    TResult Function()? getBuses,
    TResult Function(BusModel bus)? busesChange,
    TResult Function()? getRoutes,
    TResult Function(RouteModel route)? routesChange,
    TResult Function(OrderModel order)? orderReceived,
    TResult Function(TravelOrderModel order)? travelOrderReceived,
    TResult Function(String action)? orderUpdateQuantity,
    TResult Function(GeoPoint point)? address,
    required TResult orElse(),
  }) {
    if (travelRequest != null) {
      return travelRequest(order);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateOrder value) createOrder,
    required TResult Function(CreateTravelOrder value) createTravelOrder,
    required TResult Function(Request value) request,
    required TResult Function(TravelRequest value) travelRequest,
    required TResult Function(GetBuses value) getBuses,
    required TResult Function(BusesChange value) busesChange,
    required TResult Function(GetRoutes value) getRoutes,
    required TResult Function(RoutesChange value) routesChange,
    required TResult Function(OrderReceived value) orderReceived,
    required TResult Function(TravelOrderReceived value) travelOrderReceived,
    required TResult Function(OrderUpdateQuantity value) orderUpdateQuantity,
    required TResult Function(Address value) address,
  }) {
    return travelRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateOrder value)? createOrder,
    TResult Function(CreateTravelOrder value)? createTravelOrder,
    TResult Function(Request value)? request,
    TResult Function(TravelRequest value)? travelRequest,
    TResult Function(GetBuses value)? getBuses,
    TResult Function(BusesChange value)? busesChange,
    TResult Function(GetRoutes value)? getRoutes,
    TResult Function(RoutesChange value)? routesChange,
    TResult Function(OrderReceived value)? orderReceived,
    TResult Function(TravelOrderReceived value)? travelOrderReceived,
    TResult Function(OrderUpdateQuantity value)? orderUpdateQuantity,
    TResult Function(Address value)? address,
  }) {
    return travelRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateOrder value)? createOrder,
    TResult Function(CreateTravelOrder value)? createTravelOrder,
    TResult Function(Request value)? request,
    TResult Function(TravelRequest value)? travelRequest,
    TResult Function(GetBuses value)? getBuses,
    TResult Function(BusesChange value)? busesChange,
    TResult Function(GetRoutes value)? getRoutes,
    TResult Function(RoutesChange value)? routesChange,
    TResult Function(OrderReceived value)? orderReceived,
    TResult Function(TravelOrderReceived value)? travelOrderReceived,
    TResult Function(OrderUpdateQuantity value)? orderUpdateQuantity,
    TResult Function(Address value)? address,
    required TResult orElse(),
  }) {
    if (travelRequest != null) {
      return travelRequest(this);
    }
    return orElse();
  }
}

abstract class TravelRequest implements OrderEvent {
  const factory TravelRequest(TravelOrderModel order) = _$TravelRequest;

  TravelOrderModel get order => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TravelRequestCopyWith<TravelRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetBusesCopyWith<$Res> {
  factory $GetBusesCopyWith(GetBuses value, $Res Function(GetBuses) then) =
      _$GetBusesCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetBusesCopyWithImpl<$Res> extends _$OrderEventCopyWithImpl<$Res>
    implements $GetBusesCopyWith<$Res> {
  _$GetBusesCopyWithImpl(GetBuses _value, $Res Function(GetBuses) _then)
      : super(_value, (v) => _then(v as GetBuses));

  @override
  GetBuses get _value => super._value as GetBuses;
}

/// @nodoc

class _$GetBuses implements GetBuses {
  const _$GetBuses();

  @override
  String toString() {
    return 'OrderEvent.getBuses()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetBuses);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FoodModel food) createOrder,
    required TResult Function(FoodModel order) createTravelOrder,
    required TResult Function(OrderModel order) request,
    required TResult Function(TravelOrderModel order) travelRequest,
    required TResult Function() getBuses,
    required TResult Function(BusModel bus) busesChange,
    required TResult Function() getRoutes,
    required TResult Function(RouteModel route) routesChange,
    required TResult Function(OrderModel order) orderReceived,
    required TResult Function(TravelOrderModel order) travelOrderReceived,
    required TResult Function(String action) orderUpdateQuantity,
    required TResult Function(GeoPoint point) address,
  }) {
    return getBuses();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FoodModel food)? createOrder,
    TResult Function(FoodModel order)? createTravelOrder,
    TResult Function(OrderModel order)? request,
    TResult Function(TravelOrderModel order)? travelRequest,
    TResult Function()? getBuses,
    TResult Function(BusModel bus)? busesChange,
    TResult Function()? getRoutes,
    TResult Function(RouteModel route)? routesChange,
    TResult Function(OrderModel order)? orderReceived,
    TResult Function(TravelOrderModel order)? travelOrderReceived,
    TResult Function(String action)? orderUpdateQuantity,
    TResult Function(GeoPoint point)? address,
  }) {
    return getBuses?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FoodModel food)? createOrder,
    TResult Function(FoodModel order)? createTravelOrder,
    TResult Function(OrderModel order)? request,
    TResult Function(TravelOrderModel order)? travelRequest,
    TResult Function()? getBuses,
    TResult Function(BusModel bus)? busesChange,
    TResult Function()? getRoutes,
    TResult Function(RouteModel route)? routesChange,
    TResult Function(OrderModel order)? orderReceived,
    TResult Function(TravelOrderModel order)? travelOrderReceived,
    TResult Function(String action)? orderUpdateQuantity,
    TResult Function(GeoPoint point)? address,
    required TResult orElse(),
  }) {
    if (getBuses != null) {
      return getBuses();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateOrder value) createOrder,
    required TResult Function(CreateTravelOrder value) createTravelOrder,
    required TResult Function(Request value) request,
    required TResult Function(TravelRequest value) travelRequest,
    required TResult Function(GetBuses value) getBuses,
    required TResult Function(BusesChange value) busesChange,
    required TResult Function(GetRoutes value) getRoutes,
    required TResult Function(RoutesChange value) routesChange,
    required TResult Function(OrderReceived value) orderReceived,
    required TResult Function(TravelOrderReceived value) travelOrderReceived,
    required TResult Function(OrderUpdateQuantity value) orderUpdateQuantity,
    required TResult Function(Address value) address,
  }) {
    return getBuses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateOrder value)? createOrder,
    TResult Function(CreateTravelOrder value)? createTravelOrder,
    TResult Function(Request value)? request,
    TResult Function(TravelRequest value)? travelRequest,
    TResult Function(GetBuses value)? getBuses,
    TResult Function(BusesChange value)? busesChange,
    TResult Function(GetRoutes value)? getRoutes,
    TResult Function(RoutesChange value)? routesChange,
    TResult Function(OrderReceived value)? orderReceived,
    TResult Function(TravelOrderReceived value)? travelOrderReceived,
    TResult Function(OrderUpdateQuantity value)? orderUpdateQuantity,
    TResult Function(Address value)? address,
  }) {
    return getBuses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateOrder value)? createOrder,
    TResult Function(CreateTravelOrder value)? createTravelOrder,
    TResult Function(Request value)? request,
    TResult Function(TravelRequest value)? travelRequest,
    TResult Function(GetBuses value)? getBuses,
    TResult Function(BusesChange value)? busesChange,
    TResult Function(GetRoutes value)? getRoutes,
    TResult Function(RoutesChange value)? routesChange,
    TResult Function(OrderReceived value)? orderReceived,
    TResult Function(TravelOrderReceived value)? travelOrderReceived,
    TResult Function(OrderUpdateQuantity value)? orderUpdateQuantity,
    TResult Function(Address value)? address,
    required TResult orElse(),
  }) {
    if (getBuses != null) {
      return getBuses(this);
    }
    return orElse();
  }
}

abstract class GetBuses implements OrderEvent {
  const factory GetBuses() = _$GetBuses;
}

/// @nodoc
abstract class $BusesChangeCopyWith<$Res> {
  factory $BusesChangeCopyWith(
          BusesChange value, $Res Function(BusesChange) then) =
      _$BusesChangeCopyWithImpl<$Res>;
  $Res call({BusModel bus});
}

/// @nodoc
class _$BusesChangeCopyWithImpl<$Res> extends _$OrderEventCopyWithImpl<$Res>
    implements $BusesChangeCopyWith<$Res> {
  _$BusesChangeCopyWithImpl(
      BusesChange _value, $Res Function(BusesChange) _then)
      : super(_value, (v) => _then(v as BusesChange));

  @override
  BusesChange get _value => super._value as BusesChange;

  @override
  $Res call({
    Object? bus = freezed,
  }) {
    return _then(BusesChange(
      bus == freezed
          ? _value.bus
          : bus // ignore: cast_nullable_to_non_nullable
              as BusModel,
    ));
  }
}

/// @nodoc

class _$BusesChange implements BusesChange {
  const _$BusesChange(this.bus);

  @override
  final BusModel bus;

  @override
  String toString() {
    return 'OrderEvent.busesChange(bus: $bus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BusesChange &&
            (identical(other.bus, bus) ||
                const DeepCollectionEquality().equals(other.bus, bus)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(bus);

  @JsonKey(ignore: true)
  @override
  $BusesChangeCopyWith<BusesChange> get copyWith =>
      _$BusesChangeCopyWithImpl<BusesChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FoodModel food) createOrder,
    required TResult Function(FoodModel order) createTravelOrder,
    required TResult Function(OrderModel order) request,
    required TResult Function(TravelOrderModel order) travelRequest,
    required TResult Function() getBuses,
    required TResult Function(BusModel bus) busesChange,
    required TResult Function() getRoutes,
    required TResult Function(RouteModel route) routesChange,
    required TResult Function(OrderModel order) orderReceived,
    required TResult Function(TravelOrderModel order) travelOrderReceived,
    required TResult Function(String action) orderUpdateQuantity,
    required TResult Function(GeoPoint point) address,
  }) {
    return busesChange(bus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FoodModel food)? createOrder,
    TResult Function(FoodModel order)? createTravelOrder,
    TResult Function(OrderModel order)? request,
    TResult Function(TravelOrderModel order)? travelRequest,
    TResult Function()? getBuses,
    TResult Function(BusModel bus)? busesChange,
    TResult Function()? getRoutes,
    TResult Function(RouteModel route)? routesChange,
    TResult Function(OrderModel order)? orderReceived,
    TResult Function(TravelOrderModel order)? travelOrderReceived,
    TResult Function(String action)? orderUpdateQuantity,
    TResult Function(GeoPoint point)? address,
  }) {
    return busesChange?.call(bus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FoodModel food)? createOrder,
    TResult Function(FoodModel order)? createTravelOrder,
    TResult Function(OrderModel order)? request,
    TResult Function(TravelOrderModel order)? travelRequest,
    TResult Function()? getBuses,
    TResult Function(BusModel bus)? busesChange,
    TResult Function()? getRoutes,
    TResult Function(RouteModel route)? routesChange,
    TResult Function(OrderModel order)? orderReceived,
    TResult Function(TravelOrderModel order)? travelOrderReceived,
    TResult Function(String action)? orderUpdateQuantity,
    TResult Function(GeoPoint point)? address,
    required TResult orElse(),
  }) {
    if (busesChange != null) {
      return busesChange(bus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateOrder value) createOrder,
    required TResult Function(CreateTravelOrder value) createTravelOrder,
    required TResult Function(Request value) request,
    required TResult Function(TravelRequest value) travelRequest,
    required TResult Function(GetBuses value) getBuses,
    required TResult Function(BusesChange value) busesChange,
    required TResult Function(GetRoutes value) getRoutes,
    required TResult Function(RoutesChange value) routesChange,
    required TResult Function(OrderReceived value) orderReceived,
    required TResult Function(TravelOrderReceived value) travelOrderReceived,
    required TResult Function(OrderUpdateQuantity value) orderUpdateQuantity,
    required TResult Function(Address value) address,
  }) {
    return busesChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateOrder value)? createOrder,
    TResult Function(CreateTravelOrder value)? createTravelOrder,
    TResult Function(Request value)? request,
    TResult Function(TravelRequest value)? travelRequest,
    TResult Function(GetBuses value)? getBuses,
    TResult Function(BusesChange value)? busesChange,
    TResult Function(GetRoutes value)? getRoutes,
    TResult Function(RoutesChange value)? routesChange,
    TResult Function(OrderReceived value)? orderReceived,
    TResult Function(TravelOrderReceived value)? travelOrderReceived,
    TResult Function(OrderUpdateQuantity value)? orderUpdateQuantity,
    TResult Function(Address value)? address,
  }) {
    return busesChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateOrder value)? createOrder,
    TResult Function(CreateTravelOrder value)? createTravelOrder,
    TResult Function(Request value)? request,
    TResult Function(TravelRequest value)? travelRequest,
    TResult Function(GetBuses value)? getBuses,
    TResult Function(BusesChange value)? busesChange,
    TResult Function(GetRoutes value)? getRoutes,
    TResult Function(RoutesChange value)? routesChange,
    TResult Function(OrderReceived value)? orderReceived,
    TResult Function(TravelOrderReceived value)? travelOrderReceived,
    TResult Function(OrderUpdateQuantity value)? orderUpdateQuantity,
    TResult Function(Address value)? address,
    required TResult orElse(),
  }) {
    if (busesChange != null) {
      return busesChange(this);
    }
    return orElse();
  }
}

abstract class BusesChange implements OrderEvent {
  const factory BusesChange(BusModel bus) = _$BusesChange;

  BusModel get bus => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BusesChangeCopyWith<BusesChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetRoutesCopyWith<$Res> {
  factory $GetRoutesCopyWith(GetRoutes value, $Res Function(GetRoutes) then) =
      _$GetRoutesCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetRoutesCopyWithImpl<$Res> extends _$OrderEventCopyWithImpl<$Res>
    implements $GetRoutesCopyWith<$Res> {
  _$GetRoutesCopyWithImpl(GetRoutes _value, $Res Function(GetRoutes) _then)
      : super(_value, (v) => _then(v as GetRoutes));

  @override
  GetRoutes get _value => super._value as GetRoutes;
}

/// @nodoc

class _$GetRoutes implements GetRoutes {
  const _$GetRoutes();

  @override
  String toString() {
    return 'OrderEvent.getRoutes()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetRoutes);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FoodModel food) createOrder,
    required TResult Function(FoodModel order) createTravelOrder,
    required TResult Function(OrderModel order) request,
    required TResult Function(TravelOrderModel order) travelRequest,
    required TResult Function() getBuses,
    required TResult Function(BusModel bus) busesChange,
    required TResult Function() getRoutes,
    required TResult Function(RouteModel route) routesChange,
    required TResult Function(OrderModel order) orderReceived,
    required TResult Function(TravelOrderModel order) travelOrderReceived,
    required TResult Function(String action) orderUpdateQuantity,
    required TResult Function(GeoPoint point) address,
  }) {
    return getRoutes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FoodModel food)? createOrder,
    TResult Function(FoodModel order)? createTravelOrder,
    TResult Function(OrderModel order)? request,
    TResult Function(TravelOrderModel order)? travelRequest,
    TResult Function()? getBuses,
    TResult Function(BusModel bus)? busesChange,
    TResult Function()? getRoutes,
    TResult Function(RouteModel route)? routesChange,
    TResult Function(OrderModel order)? orderReceived,
    TResult Function(TravelOrderModel order)? travelOrderReceived,
    TResult Function(String action)? orderUpdateQuantity,
    TResult Function(GeoPoint point)? address,
  }) {
    return getRoutes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FoodModel food)? createOrder,
    TResult Function(FoodModel order)? createTravelOrder,
    TResult Function(OrderModel order)? request,
    TResult Function(TravelOrderModel order)? travelRequest,
    TResult Function()? getBuses,
    TResult Function(BusModel bus)? busesChange,
    TResult Function()? getRoutes,
    TResult Function(RouteModel route)? routesChange,
    TResult Function(OrderModel order)? orderReceived,
    TResult Function(TravelOrderModel order)? travelOrderReceived,
    TResult Function(String action)? orderUpdateQuantity,
    TResult Function(GeoPoint point)? address,
    required TResult orElse(),
  }) {
    if (getRoutes != null) {
      return getRoutes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateOrder value) createOrder,
    required TResult Function(CreateTravelOrder value) createTravelOrder,
    required TResult Function(Request value) request,
    required TResult Function(TravelRequest value) travelRequest,
    required TResult Function(GetBuses value) getBuses,
    required TResult Function(BusesChange value) busesChange,
    required TResult Function(GetRoutes value) getRoutes,
    required TResult Function(RoutesChange value) routesChange,
    required TResult Function(OrderReceived value) orderReceived,
    required TResult Function(TravelOrderReceived value) travelOrderReceived,
    required TResult Function(OrderUpdateQuantity value) orderUpdateQuantity,
    required TResult Function(Address value) address,
  }) {
    return getRoutes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateOrder value)? createOrder,
    TResult Function(CreateTravelOrder value)? createTravelOrder,
    TResult Function(Request value)? request,
    TResult Function(TravelRequest value)? travelRequest,
    TResult Function(GetBuses value)? getBuses,
    TResult Function(BusesChange value)? busesChange,
    TResult Function(GetRoutes value)? getRoutes,
    TResult Function(RoutesChange value)? routesChange,
    TResult Function(OrderReceived value)? orderReceived,
    TResult Function(TravelOrderReceived value)? travelOrderReceived,
    TResult Function(OrderUpdateQuantity value)? orderUpdateQuantity,
    TResult Function(Address value)? address,
  }) {
    return getRoutes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateOrder value)? createOrder,
    TResult Function(CreateTravelOrder value)? createTravelOrder,
    TResult Function(Request value)? request,
    TResult Function(TravelRequest value)? travelRequest,
    TResult Function(GetBuses value)? getBuses,
    TResult Function(BusesChange value)? busesChange,
    TResult Function(GetRoutes value)? getRoutes,
    TResult Function(RoutesChange value)? routesChange,
    TResult Function(OrderReceived value)? orderReceived,
    TResult Function(TravelOrderReceived value)? travelOrderReceived,
    TResult Function(OrderUpdateQuantity value)? orderUpdateQuantity,
    TResult Function(Address value)? address,
    required TResult orElse(),
  }) {
    if (getRoutes != null) {
      return getRoutes(this);
    }
    return orElse();
  }
}

abstract class GetRoutes implements OrderEvent {
  const factory GetRoutes() = _$GetRoutes;
}

/// @nodoc
abstract class $RoutesChangeCopyWith<$Res> {
  factory $RoutesChangeCopyWith(
          RoutesChange value, $Res Function(RoutesChange) then) =
      _$RoutesChangeCopyWithImpl<$Res>;
  $Res call({RouteModel route});
}

/// @nodoc
class _$RoutesChangeCopyWithImpl<$Res> extends _$OrderEventCopyWithImpl<$Res>
    implements $RoutesChangeCopyWith<$Res> {
  _$RoutesChangeCopyWithImpl(
      RoutesChange _value, $Res Function(RoutesChange) _then)
      : super(_value, (v) => _then(v as RoutesChange));

  @override
  RoutesChange get _value => super._value as RoutesChange;

  @override
  $Res call({
    Object? route = freezed,
  }) {
    return _then(RoutesChange(
      route == freezed
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as RouteModel,
    ));
  }
}

/// @nodoc

class _$RoutesChange implements RoutesChange {
  const _$RoutesChange(this.route);

  @override
  final RouteModel route;

  @override
  String toString() {
    return 'OrderEvent.routesChange(route: $route)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RoutesChange &&
            (identical(other.route, route) ||
                const DeepCollectionEquality().equals(other.route, route)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(route);

  @JsonKey(ignore: true)
  @override
  $RoutesChangeCopyWith<RoutesChange> get copyWith =>
      _$RoutesChangeCopyWithImpl<RoutesChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FoodModel food) createOrder,
    required TResult Function(FoodModel order) createTravelOrder,
    required TResult Function(OrderModel order) request,
    required TResult Function(TravelOrderModel order) travelRequest,
    required TResult Function() getBuses,
    required TResult Function(BusModel bus) busesChange,
    required TResult Function() getRoutes,
    required TResult Function(RouteModel route) routesChange,
    required TResult Function(OrderModel order) orderReceived,
    required TResult Function(TravelOrderModel order) travelOrderReceived,
    required TResult Function(String action) orderUpdateQuantity,
    required TResult Function(GeoPoint point) address,
  }) {
    return routesChange(route);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FoodModel food)? createOrder,
    TResult Function(FoodModel order)? createTravelOrder,
    TResult Function(OrderModel order)? request,
    TResult Function(TravelOrderModel order)? travelRequest,
    TResult Function()? getBuses,
    TResult Function(BusModel bus)? busesChange,
    TResult Function()? getRoutes,
    TResult Function(RouteModel route)? routesChange,
    TResult Function(OrderModel order)? orderReceived,
    TResult Function(TravelOrderModel order)? travelOrderReceived,
    TResult Function(String action)? orderUpdateQuantity,
    TResult Function(GeoPoint point)? address,
  }) {
    return routesChange?.call(route);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FoodModel food)? createOrder,
    TResult Function(FoodModel order)? createTravelOrder,
    TResult Function(OrderModel order)? request,
    TResult Function(TravelOrderModel order)? travelRequest,
    TResult Function()? getBuses,
    TResult Function(BusModel bus)? busesChange,
    TResult Function()? getRoutes,
    TResult Function(RouteModel route)? routesChange,
    TResult Function(OrderModel order)? orderReceived,
    TResult Function(TravelOrderModel order)? travelOrderReceived,
    TResult Function(String action)? orderUpdateQuantity,
    TResult Function(GeoPoint point)? address,
    required TResult orElse(),
  }) {
    if (routesChange != null) {
      return routesChange(route);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateOrder value) createOrder,
    required TResult Function(CreateTravelOrder value) createTravelOrder,
    required TResult Function(Request value) request,
    required TResult Function(TravelRequest value) travelRequest,
    required TResult Function(GetBuses value) getBuses,
    required TResult Function(BusesChange value) busesChange,
    required TResult Function(GetRoutes value) getRoutes,
    required TResult Function(RoutesChange value) routesChange,
    required TResult Function(OrderReceived value) orderReceived,
    required TResult Function(TravelOrderReceived value) travelOrderReceived,
    required TResult Function(OrderUpdateQuantity value) orderUpdateQuantity,
    required TResult Function(Address value) address,
  }) {
    return routesChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateOrder value)? createOrder,
    TResult Function(CreateTravelOrder value)? createTravelOrder,
    TResult Function(Request value)? request,
    TResult Function(TravelRequest value)? travelRequest,
    TResult Function(GetBuses value)? getBuses,
    TResult Function(BusesChange value)? busesChange,
    TResult Function(GetRoutes value)? getRoutes,
    TResult Function(RoutesChange value)? routesChange,
    TResult Function(OrderReceived value)? orderReceived,
    TResult Function(TravelOrderReceived value)? travelOrderReceived,
    TResult Function(OrderUpdateQuantity value)? orderUpdateQuantity,
    TResult Function(Address value)? address,
  }) {
    return routesChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateOrder value)? createOrder,
    TResult Function(CreateTravelOrder value)? createTravelOrder,
    TResult Function(Request value)? request,
    TResult Function(TravelRequest value)? travelRequest,
    TResult Function(GetBuses value)? getBuses,
    TResult Function(BusesChange value)? busesChange,
    TResult Function(GetRoutes value)? getRoutes,
    TResult Function(RoutesChange value)? routesChange,
    TResult Function(OrderReceived value)? orderReceived,
    TResult Function(TravelOrderReceived value)? travelOrderReceived,
    TResult Function(OrderUpdateQuantity value)? orderUpdateQuantity,
    TResult Function(Address value)? address,
    required TResult orElse(),
  }) {
    if (routesChange != null) {
      return routesChange(this);
    }
    return orElse();
  }
}

abstract class RoutesChange implements OrderEvent {
  const factory RoutesChange(RouteModel route) = _$RoutesChange;

  RouteModel get route => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoutesChangeCopyWith<RoutesChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderReceivedCopyWith<$Res> {
  factory $OrderReceivedCopyWith(
          OrderReceived value, $Res Function(OrderReceived) then) =
      _$OrderReceivedCopyWithImpl<$Res>;
  $Res call({OrderModel order});
}

/// @nodoc
class _$OrderReceivedCopyWithImpl<$Res> extends _$OrderEventCopyWithImpl<$Res>
    implements $OrderReceivedCopyWith<$Res> {
  _$OrderReceivedCopyWithImpl(
      OrderReceived _value, $Res Function(OrderReceived) _then)
      : super(_value, (v) => _then(v as OrderReceived));

  @override
  OrderReceived get _value => super._value as OrderReceived;

  @override
  $Res call({
    Object? order = freezed,
  }) {
    return _then(OrderReceived(
      order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderModel,
    ));
  }
}

/// @nodoc

class _$OrderReceived implements OrderReceived {
  const _$OrderReceived(this.order);

  @override
  final OrderModel order;

  @override
  String toString() {
    return 'OrderEvent.orderReceived(order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OrderReceived &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(order);

  @JsonKey(ignore: true)
  @override
  $OrderReceivedCopyWith<OrderReceived> get copyWith =>
      _$OrderReceivedCopyWithImpl<OrderReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FoodModel food) createOrder,
    required TResult Function(FoodModel order) createTravelOrder,
    required TResult Function(OrderModel order) request,
    required TResult Function(TravelOrderModel order) travelRequest,
    required TResult Function() getBuses,
    required TResult Function(BusModel bus) busesChange,
    required TResult Function() getRoutes,
    required TResult Function(RouteModel route) routesChange,
    required TResult Function(OrderModel order) orderReceived,
    required TResult Function(TravelOrderModel order) travelOrderReceived,
    required TResult Function(String action) orderUpdateQuantity,
    required TResult Function(GeoPoint point) address,
  }) {
    return orderReceived(order);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FoodModel food)? createOrder,
    TResult Function(FoodModel order)? createTravelOrder,
    TResult Function(OrderModel order)? request,
    TResult Function(TravelOrderModel order)? travelRequest,
    TResult Function()? getBuses,
    TResult Function(BusModel bus)? busesChange,
    TResult Function()? getRoutes,
    TResult Function(RouteModel route)? routesChange,
    TResult Function(OrderModel order)? orderReceived,
    TResult Function(TravelOrderModel order)? travelOrderReceived,
    TResult Function(String action)? orderUpdateQuantity,
    TResult Function(GeoPoint point)? address,
  }) {
    return orderReceived?.call(order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FoodModel food)? createOrder,
    TResult Function(FoodModel order)? createTravelOrder,
    TResult Function(OrderModel order)? request,
    TResult Function(TravelOrderModel order)? travelRequest,
    TResult Function()? getBuses,
    TResult Function(BusModel bus)? busesChange,
    TResult Function()? getRoutes,
    TResult Function(RouteModel route)? routesChange,
    TResult Function(OrderModel order)? orderReceived,
    TResult Function(TravelOrderModel order)? travelOrderReceived,
    TResult Function(String action)? orderUpdateQuantity,
    TResult Function(GeoPoint point)? address,
    required TResult orElse(),
  }) {
    if (orderReceived != null) {
      return orderReceived(order);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateOrder value) createOrder,
    required TResult Function(CreateTravelOrder value) createTravelOrder,
    required TResult Function(Request value) request,
    required TResult Function(TravelRequest value) travelRequest,
    required TResult Function(GetBuses value) getBuses,
    required TResult Function(BusesChange value) busesChange,
    required TResult Function(GetRoutes value) getRoutes,
    required TResult Function(RoutesChange value) routesChange,
    required TResult Function(OrderReceived value) orderReceived,
    required TResult Function(TravelOrderReceived value) travelOrderReceived,
    required TResult Function(OrderUpdateQuantity value) orderUpdateQuantity,
    required TResult Function(Address value) address,
  }) {
    return orderReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateOrder value)? createOrder,
    TResult Function(CreateTravelOrder value)? createTravelOrder,
    TResult Function(Request value)? request,
    TResult Function(TravelRequest value)? travelRequest,
    TResult Function(GetBuses value)? getBuses,
    TResult Function(BusesChange value)? busesChange,
    TResult Function(GetRoutes value)? getRoutes,
    TResult Function(RoutesChange value)? routesChange,
    TResult Function(OrderReceived value)? orderReceived,
    TResult Function(TravelOrderReceived value)? travelOrderReceived,
    TResult Function(OrderUpdateQuantity value)? orderUpdateQuantity,
    TResult Function(Address value)? address,
  }) {
    return orderReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateOrder value)? createOrder,
    TResult Function(CreateTravelOrder value)? createTravelOrder,
    TResult Function(Request value)? request,
    TResult Function(TravelRequest value)? travelRequest,
    TResult Function(GetBuses value)? getBuses,
    TResult Function(BusesChange value)? busesChange,
    TResult Function(GetRoutes value)? getRoutes,
    TResult Function(RoutesChange value)? routesChange,
    TResult Function(OrderReceived value)? orderReceived,
    TResult Function(TravelOrderReceived value)? travelOrderReceived,
    TResult Function(OrderUpdateQuantity value)? orderUpdateQuantity,
    TResult Function(Address value)? address,
    required TResult orElse(),
  }) {
    if (orderReceived != null) {
      return orderReceived(this);
    }
    return orElse();
  }
}

abstract class OrderReceived implements OrderEvent {
  const factory OrderReceived(OrderModel order) = _$OrderReceived;

  OrderModel get order => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderReceivedCopyWith<OrderReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelOrderReceivedCopyWith<$Res> {
  factory $TravelOrderReceivedCopyWith(
          TravelOrderReceived value, $Res Function(TravelOrderReceived) then) =
      _$TravelOrderReceivedCopyWithImpl<$Res>;
  $Res call({TravelOrderModel order});
}

/// @nodoc
class _$TravelOrderReceivedCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res>
    implements $TravelOrderReceivedCopyWith<$Res> {
  _$TravelOrderReceivedCopyWithImpl(
      TravelOrderReceived _value, $Res Function(TravelOrderReceived) _then)
      : super(_value, (v) => _then(v as TravelOrderReceived));

  @override
  TravelOrderReceived get _value => super._value as TravelOrderReceived;

  @override
  $Res call({
    Object? order = freezed,
  }) {
    return _then(TravelOrderReceived(
      order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as TravelOrderModel,
    ));
  }
}

/// @nodoc

class _$TravelOrderReceived implements TravelOrderReceived {
  const _$TravelOrderReceived(this.order);

  @override
  final TravelOrderModel order;

  @override
  String toString() {
    return 'OrderEvent.travelOrderReceived(order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TravelOrderReceived &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(order);

  @JsonKey(ignore: true)
  @override
  $TravelOrderReceivedCopyWith<TravelOrderReceived> get copyWith =>
      _$TravelOrderReceivedCopyWithImpl<TravelOrderReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FoodModel food) createOrder,
    required TResult Function(FoodModel order) createTravelOrder,
    required TResult Function(OrderModel order) request,
    required TResult Function(TravelOrderModel order) travelRequest,
    required TResult Function() getBuses,
    required TResult Function(BusModel bus) busesChange,
    required TResult Function() getRoutes,
    required TResult Function(RouteModel route) routesChange,
    required TResult Function(OrderModel order) orderReceived,
    required TResult Function(TravelOrderModel order) travelOrderReceived,
    required TResult Function(String action) orderUpdateQuantity,
    required TResult Function(GeoPoint point) address,
  }) {
    return travelOrderReceived(order);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FoodModel food)? createOrder,
    TResult Function(FoodModel order)? createTravelOrder,
    TResult Function(OrderModel order)? request,
    TResult Function(TravelOrderModel order)? travelRequest,
    TResult Function()? getBuses,
    TResult Function(BusModel bus)? busesChange,
    TResult Function()? getRoutes,
    TResult Function(RouteModel route)? routesChange,
    TResult Function(OrderModel order)? orderReceived,
    TResult Function(TravelOrderModel order)? travelOrderReceived,
    TResult Function(String action)? orderUpdateQuantity,
    TResult Function(GeoPoint point)? address,
  }) {
    return travelOrderReceived?.call(order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FoodModel food)? createOrder,
    TResult Function(FoodModel order)? createTravelOrder,
    TResult Function(OrderModel order)? request,
    TResult Function(TravelOrderModel order)? travelRequest,
    TResult Function()? getBuses,
    TResult Function(BusModel bus)? busesChange,
    TResult Function()? getRoutes,
    TResult Function(RouteModel route)? routesChange,
    TResult Function(OrderModel order)? orderReceived,
    TResult Function(TravelOrderModel order)? travelOrderReceived,
    TResult Function(String action)? orderUpdateQuantity,
    TResult Function(GeoPoint point)? address,
    required TResult orElse(),
  }) {
    if (travelOrderReceived != null) {
      return travelOrderReceived(order);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateOrder value) createOrder,
    required TResult Function(CreateTravelOrder value) createTravelOrder,
    required TResult Function(Request value) request,
    required TResult Function(TravelRequest value) travelRequest,
    required TResult Function(GetBuses value) getBuses,
    required TResult Function(BusesChange value) busesChange,
    required TResult Function(GetRoutes value) getRoutes,
    required TResult Function(RoutesChange value) routesChange,
    required TResult Function(OrderReceived value) orderReceived,
    required TResult Function(TravelOrderReceived value) travelOrderReceived,
    required TResult Function(OrderUpdateQuantity value) orderUpdateQuantity,
    required TResult Function(Address value) address,
  }) {
    return travelOrderReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateOrder value)? createOrder,
    TResult Function(CreateTravelOrder value)? createTravelOrder,
    TResult Function(Request value)? request,
    TResult Function(TravelRequest value)? travelRequest,
    TResult Function(GetBuses value)? getBuses,
    TResult Function(BusesChange value)? busesChange,
    TResult Function(GetRoutes value)? getRoutes,
    TResult Function(RoutesChange value)? routesChange,
    TResult Function(OrderReceived value)? orderReceived,
    TResult Function(TravelOrderReceived value)? travelOrderReceived,
    TResult Function(OrderUpdateQuantity value)? orderUpdateQuantity,
    TResult Function(Address value)? address,
  }) {
    return travelOrderReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateOrder value)? createOrder,
    TResult Function(CreateTravelOrder value)? createTravelOrder,
    TResult Function(Request value)? request,
    TResult Function(TravelRequest value)? travelRequest,
    TResult Function(GetBuses value)? getBuses,
    TResult Function(BusesChange value)? busesChange,
    TResult Function(GetRoutes value)? getRoutes,
    TResult Function(RoutesChange value)? routesChange,
    TResult Function(OrderReceived value)? orderReceived,
    TResult Function(TravelOrderReceived value)? travelOrderReceived,
    TResult Function(OrderUpdateQuantity value)? orderUpdateQuantity,
    TResult Function(Address value)? address,
    required TResult orElse(),
  }) {
    if (travelOrderReceived != null) {
      return travelOrderReceived(this);
    }
    return orElse();
  }
}

abstract class TravelOrderReceived implements OrderEvent {
  const factory TravelOrderReceived(TravelOrderModel order) =
      _$TravelOrderReceived;

  TravelOrderModel get order => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TravelOrderReceivedCopyWith<TravelOrderReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderUpdateQuantityCopyWith<$Res> {
  factory $OrderUpdateQuantityCopyWith(
          OrderUpdateQuantity value, $Res Function(OrderUpdateQuantity) then) =
      _$OrderUpdateQuantityCopyWithImpl<$Res>;
  $Res call({String action});
}

/// @nodoc
class _$OrderUpdateQuantityCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res>
    implements $OrderUpdateQuantityCopyWith<$Res> {
  _$OrderUpdateQuantityCopyWithImpl(
      OrderUpdateQuantity _value, $Res Function(OrderUpdateQuantity) _then)
      : super(_value, (v) => _then(v as OrderUpdateQuantity));

  @override
  OrderUpdateQuantity get _value => super._value as OrderUpdateQuantity;

  @override
  $Res call({
    Object? action = freezed,
  }) {
    return _then(OrderUpdateQuantity(
      action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OrderUpdateQuantity implements OrderUpdateQuantity {
  const _$OrderUpdateQuantity(this.action);

  @override
  final String action;

  @override
  String toString() {
    return 'OrderEvent.orderUpdateQuantity(action: $action)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OrderUpdateQuantity &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(action);

  @JsonKey(ignore: true)
  @override
  $OrderUpdateQuantityCopyWith<OrderUpdateQuantity> get copyWith =>
      _$OrderUpdateQuantityCopyWithImpl<OrderUpdateQuantity>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FoodModel food) createOrder,
    required TResult Function(FoodModel order) createTravelOrder,
    required TResult Function(OrderModel order) request,
    required TResult Function(TravelOrderModel order) travelRequest,
    required TResult Function() getBuses,
    required TResult Function(BusModel bus) busesChange,
    required TResult Function() getRoutes,
    required TResult Function(RouteModel route) routesChange,
    required TResult Function(OrderModel order) orderReceived,
    required TResult Function(TravelOrderModel order) travelOrderReceived,
    required TResult Function(String action) orderUpdateQuantity,
    required TResult Function(GeoPoint point) address,
  }) {
    return orderUpdateQuantity(action);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FoodModel food)? createOrder,
    TResult Function(FoodModel order)? createTravelOrder,
    TResult Function(OrderModel order)? request,
    TResult Function(TravelOrderModel order)? travelRequest,
    TResult Function()? getBuses,
    TResult Function(BusModel bus)? busesChange,
    TResult Function()? getRoutes,
    TResult Function(RouteModel route)? routesChange,
    TResult Function(OrderModel order)? orderReceived,
    TResult Function(TravelOrderModel order)? travelOrderReceived,
    TResult Function(String action)? orderUpdateQuantity,
    TResult Function(GeoPoint point)? address,
  }) {
    return orderUpdateQuantity?.call(action);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FoodModel food)? createOrder,
    TResult Function(FoodModel order)? createTravelOrder,
    TResult Function(OrderModel order)? request,
    TResult Function(TravelOrderModel order)? travelRequest,
    TResult Function()? getBuses,
    TResult Function(BusModel bus)? busesChange,
    TResult Function()? getRoutes,
    TResult Function(RouteModel route)? routesChange,
    TResult Function(OrderModel order)? orderReceived,
    TResult Function(TravelOrderModel order)? travelOrderReceived,
    TResult Function(String action)? orderUpdateQuantity,
    TResult Function(GeoPoint point)? address,
    required TResult orElse(),
  }) {
    if (orderUpdateQuantity != null) {
      return orderUpdateQuantity(action);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateOrder value) createOrder,
    required TResult Function(CreateTravelOrder value) createTravelOrder,
    required TResult Function(Request value) request,
    required TResult Function(TravelRequest value) travelRequest,
    required TResult Function(GetBuses value) getBuses,
    required TResult Function(BusesChange value) busesChange,
    required TResult Function(GetRoutes value) getRoutes,
    required TResult Function(RoutesChange value) routesChange,
    required TResult Function(OrderReceived value) orderReceived,
    required TResult Function(TravelOrderReceived value) travelOrderReceived,
    required TResult Function(OrderUpdateQuantity value) orderUpdateQuantity,
    required TResult Function(Address value) address,
  }) {
    return orderUpdateQuantity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateOrder value)? createOrder,
    TResult Function(CreateTravelOrder value)? createTravelOrder,
    TResult Function(Request value)? request,
    TResult Function(TravelRequest value)? travelRequest,
    TResult Function(GetBuses value)? getBuses,
    TResult Function(BusesChange value)? busesChange,
    TResult Function(GetRoutes value)? getRoutes,
    TResult Function(RoutesChange value)? routesChange,
    TResult Function(OrderReceived value)? orderReceived,
    TResult Function(TravelOrderReceived value)? travelOrderReceived,
    TResult Function(OrderUpdateQuantity value)? orderUpdateQuantity,
    TResult Function(Address value)? address,
  }) {
    return orderUpdateQuantity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateOrder value)? createOrder,
    TResult Function(CreateTravelOrder value)? createTravelOrder,
    TResult Function(Request value)? request,
    TResult Function(TravelRequest value)? travelRequest,
    TResult Function(GetBuses value)? getBuses,
    TResult Function(BusesChange value)? busesChange,
    TResult Function(GetRoutes value)? getRoutes,
    TResult Function(RoutesChange value)? routesChange,
    TResult Function(OrderReceived value)? orderReceived,
    TResult Function(TravelOrderReceived value)? travelOrderReceived,
    TResult Function(OrderUpdateQuantity value)? orderUpdateQuantity,
    TResult Function(Address value)? address,
    required TResult orElse(),
  }) {
    if (orderUpdateQuantity != null) {
      return orderUpdateQuantity(this);
    }
    return orElse();
  }
}

abstract class OrderUpdateQuantity implements OrderEvent {
  const factory OrderUpdateQuantity(String action) = _$OrderUpdateQuantity;

  String get action => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderUpdateQuantityCopyWith<OrderUpdateQuantity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res>;
  $Res call({GeoPoint point});
}

/// @nodoc
class _$AddressCopyWithImpl<$Res> extends _$OrderEventCopyWithImpl<$Res>
    implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(Address _value, $Res Function(Address) _then)
      : super(_value, (v) => _then(v as Address));

  @override
  Address get _value => super._value as Address;

  @override
  $Res call({
    Object? point = freezed,
  }) {
    return _then(Address(
      point == freezed
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as GeoPoint,
    ));
  }
}

/// @nodoc

class _$Address implements Address {
  const _$Address(this.point);

  @override
  final GeoPoint point;

  @override
  String toString() {
    return 'OrderEvent.address(point: $point)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Address &&
            (identical(other.point, point) ||
                const DeepCollectionEquality().equals(other.point, point)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(point);

  @JsonKey(ignore: true)
  @override
  $AddressCopyWith<Address> get copyWith =>
      _$AddressCopyWithImpl<Address>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FoodModel food) createOrder,
    required TResult Function(FoodModel order) createTravelOrder,
    required TResult Function(OrderModel order) request,
    required TResult Function(TravelOrderModel order) travelRequest,
    required TResult Function() getBuses,
    required TResult Function(BusModel bus) busesChange,
    required TResult Function() getRoutes,
    required TResult Function(RouteModel route) routesChange,
    required TResult Function(OrderModel order) orderReceived,
    required TResult Function(TravelOrderModel order) travelOrderReceived,
    required TResult Function(String action) orderUpdateQuantity,
    required TResult Function(GeoPoint point) address,
  }) {
    return address(point);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FoodModel food)? createOrder,
    TResult Function(FoodModel order)? createTravelOrder,
    TResult Function(OrderModel order)? request,
    TResult Function(TravelOrderModel order)? travelRequest,
    TResult Function()? getBuses,
    TResult Function(BusModel bus)? busesChange,
    TResult Function()? getRoutes,
    TResult Function(RouteModel route)? routesChange,
    TResult Function(OrderModel order)? orderReceived,
    TResult Function(TravelOrderModel order)? travelOrderReceived,
    TResult Function(String action)? orderUpdateQuantity,
    TResult Function(GeoPoint point)? address,
  }) {
    return address?.call(point);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FoodModel food)? createOrder,
    TResult Function(FoodModel order)? createTravelOrder,
    TResult Function(OrderModel order)? request,
    TResult Function(TravelOrderModel order)? travelRequest,
    TResult Function()? getBuses,
    TResult Function(BusModel bus)? busesChange,
    TResult Function()? getRoutes,
    TResult Function(RouteModel route)? routesChange,
    TResult Function(OrderModel order)? orderReceived,
    TResult Function(TravelOrderModel order)? travelOrderReceived,
    TResult Function(String action)? orderUpdateQuantity,
    TResult Function(GeoPoint point)? address,
    required TResult orElse(),
  }) {
    if (address != null) {
      return address(point);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateOrder value) createOrder,
    required TResult Function(CreateTravelOrder value) createTravelOrder,
    required TResult Function(Request value) request,
    required TResult Function(TravelRequest value) travelRequest,
    required TResult Function(GetBuses value) getBuses,
    required TResult Function(BusesChange value) busesChange,
    required TResult Function(GetRoutes value) getRoutes,
    required TResult Function(RoutesChange value) routesChange,
    required TResult Function(OrderReceived value) orderReceived,
    required TResult Function(TravelOrderReceived value) travelOrderReceived,
    required TResult Function(OrderUpdateQuantity value) orderUpdateQuantity,
    required TResult Function(Address value) address,
  }) {
    return address(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateOrder value)? createOrder,
    TResult Function(CreateTravelOrder value)? createTravelOrder,
    TResult Function(Request value)? request,
    TResult Function(TravelRequest value)? travelRequest,
    TResult Function(GetBuses value)? getBuses,
    TResult Function(BusesChange value)? busesChange,
    TResult Function(GetRoutes value)? getRoutes,
    TResult Function(RoutesChange value)? routesChange,
    TResult Function(OrderReceived value)? orderReceived,
    TResult Function(TravelOrderReceived value)? travelOrderReceived,
    TResult Function(OrderUpdateQuantity value)? orderUpdateQuantity,
    TResult Function(Address value)? address,
  }) {
    return address?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateOrder value)? createOrder,
    TResult Function(CreateTravelOrder value)? createTravelOrder,
    TResult Function(Request value)? request,
    TResult Function(TravelRequest value)? travelRequest,
    TResult Function(GetBuses value)? getBuses,
    TResult Function(BusesChange value)? busesChange,
    TResult Function(GetRoutes value)? getRoutes,
    TResult Function(RoutesChange value)? routesChange,
    TResult Function(OrderReceived value)? orderReceived,
    TResult Function(TravelOrderReceived value)? travelOrderReceived,
    TResult Function(OrderUpdateQuantity value)? orderUpdateQuantity,
    TResult Function(Address value)? address,
    required TResult orElse(),
  }) {
    if (address != null) {
      return address(this);
    }
    return orElse();
  }
}

abstract class Address implements OrderEvent {
  const factory Address(GeoPoint point) = _$Address;

  GeoPoint get point => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressCopyWith<Address> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$OrderStateTearOff {
  const _$OrderStateTearOff();

  _OrderState call(
      {required OrderModel order,
      required FoodModel food,
      required List<Order> orders,
      required bool loading,
      required List<RouteModel> routes,
      required List<BusModel> buses,
      required RouteModel route,
      required BusModel bus,
      required String busNo,
      required String seatNo,
      required String departure,
      required double originPrice,
      required String address,
      required TravelOrderModel travelOrder,
      required Option<Either<OrderFailure, OrderModel>> order0ption,
      required Option<Either<OrderFailure, TravelOrderModel>>
          travelOrderOption}) {
    return _OrderState(
      order: order,
      food: food,
      orders: orders,
      loading: loading,
      routes: routes,
      buses: buses,
      route: route,
      bus: bus,
      busNo: busNo,
      seatNo: seatNo,
      departure: departure,
      originPrice: originPrice,
      address: address,
      travelOrder: travelOrder,
      order0ption: order0ption,
      travelOrderOption: travelOrderOption,
    );
  }
}

/// @nodoc
const $OrderState = _$OrderStateTearOff();

/// @nodoc
mixin _$OrderState {
  OrderModel get order => throw _privateConstructorUsedError;
  FoodModel get food => throw _privateConstructorUsedError;
  List<Order> get orders => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  List<RouteModel> get routes => throw _privateConstructorUsedError;
  List<BusModel> get buses => throw _privateConstructorUsedError;
  RouteModel get route => throw _privateConstructorUsedError;
  BusModel get bus => throw _privateConstructorUsedError;
  String get busNo => throw _privateConstructorUsedError;
  String get seatNo => throw _privateConstructorUsedError;
  String get departure => throw _privateConstructorUsedError;
  double get originPrice => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  TravelOrderModel get travelOrder => throw _privateConstructorUsedError;
  Option<Either<OrderFailure, OrderModel>> get order0ption =>
      throw _privateConstructorUsedError;
  Option<Either<OrderFailure, TravelOrderModel>> get travelOrderOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderStateCopyWith<OrderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStateCopyWith<$Res> {
  factory $OrderStateCopyWith(
          OrderState value, $Res Function(OrderState) then) =
      _$OrderStateCopyWithImpl<$Res>;
  $Res call(
      {OrderModel order,
      FoodModel food,
      List<Order> orders,
      bool loading,
      List<RouteModel> routes,
      List<BusModel> buses,
      RouteModel route,
      BusModel bus,
      String busNo,
      String seatNo,
      String departure,
      double originPrice,
      String address,
      TravelOrderModel travelOrder,
      Option<Either<OrderFailure, OrderModel>> order0ption,
      Option<Either<OrderFailure, TravelOrderModel>> travelOrderOption});
}

/// @nodoc
class _$OrderStateCopyWithImpl<$Res> implements $OrderStateCopyWith<$Res> {
  _$OrderStateCopyWithImpl(this._value, this._then);

  final OrderState _value;
  // ignore: unused_field
  final $Res Function(OrderState) _then;

  @override
  $Res call({
    Object? order = freezed,
    Object? food = freezed,
    Object? orders = freezed,
    Object? loading = freezed,
    Object? routes = freezed,
    Object? buses = freezed,
    Object? route = freezed,
    Object? bus = freezed,
    Object? busNo = freezed,
    Object? seatNo = freezed,
    Object? departure = freezed,
    Object? originPrice = freezed,
    Object? address = freezed,
    Object? travelOrder = freezed,
    Object? order0ption = freezed,
    Object? travelOrderOption = freezed,
  }) {
    return _then(_value.copyWith(
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderModel,
      food: food == freezed
          ? _value.food
          : food // ignore: cast_nullable_to_non_nullable
              as FoodModel,
      orders: orders == freezed
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Order>,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      routes: routes == freezed
          ? _value.routes
          : routes // ignore: cast_nullable_to_non_nullable
              as List<RouteModel>,
      buses: buses == freezed
          ? _value.buses
          : buses // ignore: cast_nullable_to_non_nullable
              as List<BusModel>,
      route: route == freezed
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as RouteModel,
      bus: bus == freezed
          ? _value.bus
          : bus // ignore: cast_nullable_to_non_nullable
              as BusModel,
      busNo: busNo == freezed
          ? _value.busNo
          : busNo // ignore: cast_nullable_to_non_nullable
              as String,
      seatNo: seatNo == freezed
          ? _value.seatNo
          : seatNo // ignore: cast_nullable_to_non_nullable
              as String,
      departure: departure == freezed
          ? _value.departure
          : departure // ignore: cast_nullable_to_non_nullable
              as String,
      originPrice: originPrice == freezed
          ? _value.originPrice
          : originPrice // ignore: cast_nullable_to_non_nullable
              as double,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      travelOrder: travelOrder == freezed
          ? _value.travelOrder
          : travelOrder // ignore: cast_nullable_to_non_nullable
              as TravelOrderModel,
      order0ption: order0ption == freezed
          ? _value.order0ption
          : order0ption // ignore: cast_nullable_to_non_nullable
              as Option<Either<OrderFailure, OrderModel>>,
      travelOrderOption: travelOrderOption == freezed
          ? _value.travelOrderOption
          : travelOrderOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<OrderFailure, TravelOrderModel>>,
    ));
  }
}

/// @nodoc
abstract class _$OrderStateCopyWith<$Res> implements $OrderStateCopyWith<$Res> {
  factory _$OrderStateCopyWith(
          _OrderState value, $Res Function(_OrderState) then) =
      __$OrderStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {OrderModel order,
      FoodModel food,
      List<Order> orders,
      bool loading,
      List<RouteModel> routes,
      List<BusModel> buses,
      RouteModel route,
      BusModel bus,
      String busNo,
      String seatNo,
      String departure,
      double originPrice,
      String address,
      TravelOrderModel travelOrder,
      Option<Either<OrderFailure, OrderModel>> order0ption,
      Option<Either<OrderFailure, TravelOrderModel>> travelOrderOption});
}

/// @nodoc
class __$OrderStateCopyWithImpl<$Res> extends _$OrderStateCopyWithImpl<$Res>
    implements _$OrderStateCopyWith<$Res> {
  __$OrderStateCopyWithImpl(
      _OrderState _value, $Res Function(_OrderState) _then)
      : super(_value, (v) => _then(v as _OrderState));

  @override
  _OrderState get _value => super._value as _OrderState;

  @override
  $Res call({
    Object? order = freezed,
    Object? food = freezed,
    Object? orders = freezed,
    Object? loading = freezed,
    Object? routes = freezed,
    Object? buses = freezed,
    Object? route = freezed,
    Object? bus = freezed,
    Object? busNo = freezed,
    Object? seatNo = freezed,
    Object? departure = freezed,
    Object? originPrice = freezed,
    Object? address = freezed,
    Object? travelOrder = freezed,
    Object? order0ption = freezed,
    Object? travelOrderOption = freezed,
  }) {
    return _then(_OrderState(
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderModel,
      food: food == freezed
          ? _value.food
          : food // ignore: cast_nullable_to_non_nullable
              as FoodModel,
      orders: orders == freezed
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Order>,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      routes: routes == freezed
          ? _value.routes
          : routes // ignore: cast_nullable_to_non_nullable
              as List<RouteModel>,
      buses: buses == freezed
          ? _value.buses
          : buses // ignore: cast_nullable_to_non_nullable
              as List<BusModel>,
      route: route == freezed
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as RouteModel,
      bus: bus == freezed
          ? _value.bus
          : bus // ignore: cast_nullable_to_non_nullable
              as BusModel,
      busNo: busNo == freezed
          ? _value.busNo
          : busNo // ignore: cast_nullable_to_non_nullable
              as String,
      seatNo: seatNo == freezed
          ? _value.seatNo
          : seatNo // ignore: cast_nullable_to_non_nullable
              as String,
      departure: departure == freezed
          ? _value.departure
          : departure // ignore: cast_nullable_to_non_nullable
              as String,
      originPrice: originPrice == freezed
          ? _value.originPrice
          : originPrice // ignore: cast_nullable_to_non_nullable
              as double,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      travelOrder: travelOrder == freezed
          ? _value.travelOrder
          : travelOrder // ignore: cast_nullable_to_non_nullable
              as TravelOrderModel,
      order0ption: order0ption == freezed
          ? _value.order0ption
          : order0ption // ignore: cast_nullable_to_non_nullable
              as Option<Either<OrderFailure, OrderModel>>,
      travelOrderOption: travelOrderOption == freezed
          ? _value.travelOrderOption
          : travelOrderOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<OrderFailure, TravelOrderModel>>,
    ));
  }
}

/// @nodoc

class _$_OrderState implements _OrderState {
  const _$_OrderState(
      {required this.order,
      required this.food,
      required this.orders,
      required this.loading,
      required this.routes,
      required this.buses,
      required this.route,
      required this.bus,
      required this.busNo,
      required this.seatNo,
      required this.departure,
      required this.originPrice,
      required this.address,
      required this.travelOrder,
      required this.order0ption,
      required this.travelOrderOption});

  @override
  final OrderModel order;
  @override
  final FoodModel food;
  @override
  final List<Order> orders;
  @override
  final bool loading;
  @override
  final List<RouteModel> routes;
  @override
  final List<BusModel> buses;
  @override
  final RouteModel route;
  @override
  final BusModel bus;
  @override
  final String busNo;
  @override
  final String seatNo;
  @override
  final String departure;
  @override
  final double originPrice;
  @override
  final String address;
  @override
  final TravelOrderModel travelOrder;
  @override
  final Option<Either<OrderFailure, OrderModel>> order0ption;
  @override
  final Option<Either<OrderFailure, TravelOrderModel>> travelOrderOption;

  @override
  String toString() {
    return 'OrderState(order: $order, food: $food, orders: $orders, loading: $loading, routes: $routes, buses: $buses, route: $route, bus: $bus, busNo: $busNo, seatNo: $seatNo, departure: $departure, originPrice: $originPrice, address: $address, travelOrder: $travelOrder, order0ption: $order0ption, travelOrderOption: $travelOrderOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OrderState &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.food, food) ||
                const DeepCollectionEquality().equals(other.food, food)) &&
            (identical(other.orders, orders) ||
                const DeepCollectionEquality().equals(other.orders, orders)) &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality()
                    .equals(other.loading, loading)) &&
            (identical(other.routes, routes) ||
                const DeepCollectionEquality().equals(other.routes, routes)) &&
            (identical(other.buses, buses) ||
                const DeepCollectionEquality().equals(other.buses, buses)) &&
            (identical(other.route, route) ||
                const DeepCollectionEquality().equals(other.route, route)) &&
            (identical(other.bus, bus) ||
                const DeepCollectionEquality().equals(other.bus, bus)) &&
            (identical(other.busNo, busNo) ||
                const DeepCollectionEquality().equals(other.busNo, busNo)) &&
            (identical(other.seatNo, seatNo) ||
                const DeepCollectionEquality().equals(other.seatNo, seatNo)) &&
            (identical(other.departure, departure) ||
                const DeepCollectionEquality()
                    .equals(other.departure, departure)) &&
            (identical(other.originPrice, originPrice) ||
                const DeepCollectionEquality()
                    .equals(other.originPrice, originPrice)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.travelOrder, travelOrder) ||
                const DeepCollectionEquality()
                    .equals(other.travelOrder, travelOrder)) &&
            (identical(other.order0ption, order0ption) ||
                const DeepCollectionEquality()
                    .equals(other.order0ption, order0ption)) &&
            (identical(other.travelOrderOption, travelOrderOption) ||
                const DeepCollectionEquality()
                    .equals(other.travelOrderOption, travelOrderOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(food) ^
      const DeepCollectionEquality().hash(orders) ^
      const DeepCollectionEquality().hash(loading) ^
      const DeepCollectionEquality().hash(routes) ^
      const DeepCollectionEquality().hash(buses) ^
      const DeepCollectionEquality().hash(route) ^
      const DeepCollectionEquality().hash(bus) ^
      const DeepCollectionEquality().hash(busNo) ^
      const DeepCollectionEquality().hash(seatNo) ^
      const DeepCollectionEquality().hash(departure) ^
      const DeepCollectionEquality().hash(originPrice) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(travelOrder) ^
      const DeepCollectionEquality().hash(order0ption) ^
      const DeepCollectionEquality().hash(travelOrderOption);

  @JsonKey(ignore: true)
  @override
  _$OrderStateCopyWith<_OrderState> get copyWith =>
      __$OrderStateCopyWithImpl<_OrderState>(this, _$identity);
}

abstract class _OrderState implements OrderState {
  const factory _OrderState(
      {required OrderModel order,
      required FoodModel food,
      required List<Order> orders,
      required bool loading,
      required List<RouteModel> routes,
      required List<BusModel> buses,
      required RouteModel route,
      required BusModel bus,
      required String busNo,
      required String seatNo,
      required String departure,
      required double originPrice,
      required String address,
      required TravelOrderModel travelOrder,
      required Option<Either<OrderFailure, OrderModel>> order0ption,
      required Option<Either<OrderFailure, TravelOrderModel>>
          travelOrderOption}) = _$_OrderState;

  @override
  OrderModel get order => throw _privateConstructorUsedError;
  @override
  FoodModel get food => throw _privateConstructorUsedError;
  @override
  List<Order> get orders => throw _privateConstructorUsedError;
  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  List<RouteModel> get routes => throw _privateConstructorUsedError;
  @override
  List<BusModel> get buses => throw _privateConstructorUsedError;
  @override
  RouteModel get route => throw _privateConstructorUsedError;
  @override
  BusModel get bus => throw _privateConstructorUsedError;
  @override
  String get busNo => throw _privateConstructorUsedError;
  @override
  String get seatNo => throw _privateConstructorUsedError;
  @override
  String get departure => throw _privateConstructorUsedError;
  @override
  double get originPrice => throw _privateConstructorUsedError;
  @override
  String get address => throw _privateConstructorUsedError;
  @override
  TravelOrderModel get travelOrder => throw _privateConstructorUsedError;
  @override
  Option<Either<OrderFailure, OrderModel>> get order0ption =>
      throw _privateConstructorUsedError;
  @override
  Option<Either<OrderFailure, TravelOrderModel>> get travelOrderOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OrderStateCopyWith<_OrderState> get copyWith =>
      throw _privateConstructorUsedError;
}
