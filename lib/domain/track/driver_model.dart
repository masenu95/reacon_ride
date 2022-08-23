// ignore_for_file: avoid_bool_literals_in_conditional_expressions

class DriverModel {
  final String nidaNo;
  final String licenceNo;
  final bool online;
  final bool isBooked;
  final String status;
  final String vehicleColor;
  final String vehicleManufature;
  final String vehicleModel;
  final String vehicleNo;
  final String insuranceExpire;
  final String insuranceCover;
  final String idImage;
  final String photo;
  final String carRegistrationImage;
  final String latraImage;
  final String licenceImage;
  final String policeImage;
  final String vehicleImage;
  final Category category;
  final String token;

  DriverModel({
    required this.nidaNo,
    required this.licenceNo,
    required this.online,
    required this.isBooked,
    required this.status,
    required this.vehicleColor,
    required this.vehicleManufature,
    required this.vehicleModel,
    required this.vehicleNo,
    required this.insuranceExpire,
    required this.insuranceCover,
    required this.idImage,
    required this.photo,
    required this.carRegistrationImage,
    required this.latraImage,
    required this.licenceImage,
    required this.policeImage,
    required this.vehicleImage,
    required this.category,
    required this.token,
  });

  factory DriverModel.fromJson(Map<String, dynamic> data) {
    return DriverModel(
      nidaNo: (data['nidaNo'] ?? "").toString(),
      online: data['online'] == "TRUE" ? true : false,
      isBooked: data['isBooked'] == "TRUE" ? true : false,
      status: (data['status'] ?? "").toString(),
      vehicleColor: (data['vehicle_color'] ?? "").toString(),
      vehicleManufature: (data['vehicle_manufature'] ?? "").toString(),
      vehicleModel: (data['vehicle_madel'] ?? "").toString(),
      vehicleNo: (data['vehicle_no'] ?? "").toString(),
      insuranceExpire: (data['insurance_expire'] ?? "").toString(),
      insuranceCover: (data['insurance_cover'] ?? "").toString(),
      idImage: (data['id_image'] ?? "").toString(),
      photo: (data['photo_image'] ?? "").toString(),
      carRegistrationImage: (data['carregistration_image'] ?? "").toString(),
      latraImage: (data['latra_image'] ?? "").toString(),
      licenceImage: (data['licence_image'] ?? "").toString(),
      policeImage: (data['police_image'] ?? "").toString(),
      vehicleImage: (data['vehicle_image'] ?? "").toString(),
      category: Category.fromJson(data['category'] as Map<String, dynamic>),
      licenceNo: (data['licence_no'] ?? "").toString(),
      token: (data['token'] ?? "").toString(),
    );
  }
}

class Category {
  final String name;
  final int pricekm;
  final int hr;
  final int witing;
  final int base;

  Category({
    required this.name,
    required this.pricekm,
    required this.hr,
    required this.witing,
    required this.base,
  });

  factory Category.fromJson(Map<String, dynamic> data) {
    return Category(
      name: (data['name'] ?? "").toString(),
      pricekm: int.parse((data['pricekm'] ?? "").toString()),
      hr: int.parse((data['pricehr'] ?? "").toString()),
      witing: int.parse((data['witing'] ?? "").toString()),
      base: int.parse((data['startprice'] ?? "").toString()),
    );
  }
}
