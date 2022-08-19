class Category {
  final String title;

  Category({
    required this.title,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      title: json['name'].toString(),

    );
  }
}


class Subcategory {
  final String title;

  Subcategory({
    required this.title,
  });

  factory Subcategory.fromJson(Map<String, dynamic> json) {
    return Subcategory(
      title: json['name'].toString(),
    );
  }
}
