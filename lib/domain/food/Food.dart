class FoodModel {
  final String category;
  final String description;
  final String image;
  final String price;
  final String quantity;
  final String section;

  final String title;

  FoodModel({
    required this.category,
    required this.description,
    required this.image,
    required this.price,
    required this.quantity,
    required this.section,

    required this.title,
  });

  factory FoodModel.fromJson(Map<String, dynamic> json) {
    return FoodModel(
      category: json['category'] != null ? json['category'].toString():"",
      description: json['description'] != null ? json['description'].toString() :"",
      image: json['image'] != null ? json['image'].toString() :"",
      price: json['price'] != null ? json['price'].toString() :"",
      quantity: json['quantity'].toString(),
      section: json['subcategory'] != null ? json['subcategory'].toString() :"",
      title: json['name'] != null ? json['name'].toString() :"",
    );
  }
}
