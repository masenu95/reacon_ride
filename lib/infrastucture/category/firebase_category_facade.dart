import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:reacon_customer/domain/category/category.dart';
import 'package:reacon_customer/domain/category/category_failure.dart';
import 'package:reacon_customer/domain/category/i_category_facade.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ICategoryFacade)
class FirebaseCategoryFacade implements ICategoryFacade {
  final FirebaseFirestore _firestore;

  FirebaseCategoryFacade(this._firestore);

  @override
  Future<Either<CategoryFailure, List<Category>>> getCategories() async {
    try {
      List<Category> categories = [];
      final category = await _firestore
          .collection("Category")
          .where("visible")
          .orderBy('position', descending: false)
          .get();


      categories.addAll(category.docs.map((e) => Category.fromJson(e.data())));

      return right(categories);
    } catch (e) {

      return left(CategoryFailure.serverError());
    }
  }

  @override
  Future<Either<CategoryFailure, List<Subcategory>>> getsubategories(String category) async{
    try {
      List<Subcategory> subcategories = [];
      final subcategory = await _firestore
          .collection("Category").doc(category).collection('subcategories')
          .where("visible")
          .orderBy('position', descending: false)
          .get();


      subcategories.addAll(subcategory.docs.map((e) => Subcategory.fromJson(e.data())));

      return right(subcategories);
    } catch (e) {

      return left(CategoryFailure.serverError());
    }
  }
}
