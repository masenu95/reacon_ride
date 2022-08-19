class BusModel {
  final String name;

  BusModel({required this.name});

  factory BusModel.fromJson(Map<String, dynamic> json) {
    return BusModel(name: json['name'].toString());
  }
}
