class UserModel {
  final String uid;
  final String name;
  final String username;
  final String phone;
  final String email;

  UserModel({
    required this.uid,
    required this.name,
    required this.username,
    required this.phone,
    required this.email,
  });

  factory UserModel.fromJson({
    required Map<String, dynamic> json,
    required String id,
  }) {
    return UserModel(
      uid: id,
      name: json['name'].toString(),
      username: json['username'].toString(),
      phone: json['phone'].toString(),
      email: json['email'].toString(),
    );
  }
}
