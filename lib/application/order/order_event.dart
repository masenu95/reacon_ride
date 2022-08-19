part of 'order_bloc.dart';

@freezed
class OrderEvent with _$OrderEvent{
  const factory OrderEvent.createOrder(FoodModel food) = CreateOrder;
  const factory OrderEvent.createTravelOrder(FoodModel order) = CreateTravelOrder;
  const factory OrderEvent.request(OrderModel order) = Request;
  const factory OrderEvent.travelRequest(TravelOrderModel order) = TravelRequest;
  const factory OrderEvent.getBuses() =GetBuses;
  const factory OrderEvent.busesChange(BusModel bus) = BusesChange;
  const factory OrderEvent.getRoutes() = GetRoutes;
  const factory OrderEvent.routesChange(RouteModel route) = RoutesChange;
  const factory OrderEvent.orderReceived(OrderModel order) = OrderReceived;
  const factory OrderEvent.travelOrderReceived(TravelOrderModel order) = TravelOrderReceived;
  const factory OrderEvent.orderUpdateQuantity(String action) = OrderUpdateQuantity;
  const factory OrderEvent.address(GeoPoint point) = Address;
}
