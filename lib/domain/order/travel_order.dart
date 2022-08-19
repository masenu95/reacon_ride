class TravelOrderModel {
  final String customer;
  final String phone;
  final String foodName;
  final double price;
  final String status;
  final String route;
  final String bus;
  final String busNo;
  final String departureTime;
  final String uid;
  final String id;
  final int quantity;
  final String image;

  TravelOrderModel({
    required this.customer,
    required this.phone,
    required this.foodName,
    required this.price,
    required this.status,
    required this.route,
    required this.bus,
    required this.busNo,
    required this.departureTime,
    required this.uid,
    required this.id,
    required this.quantity,
    required this.image,
  });

  factory TravelOrderModel.fromJson(Map<String, dynamic> json) {
    return TravelOrderModel(
      customer: json['customer'].toString(),
      phone: json['phone'].toString(),
      foodName: json['foodName'].toString(),
      price: json['price'] as double,
      status: json['status'].toString(),
      route: json['route'].toString(),
      bus: json['bus'].toString(),
      busNo: json['busNo'].toString(),
      departureTime: json['departureTime'].toString(),
      uid: json['uid'].toString(),
      id: json['id'].toString(),
      quantity: json['quantity']  as int,
      image: '',
    );
  }
}
