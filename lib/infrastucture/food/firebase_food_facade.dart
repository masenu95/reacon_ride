import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:reacon_customer/domain/food/Food.dart';
import 'package:reacon_customer/domain/food/food_failure.dart';
import 'package:reacon_customer/domain/food/i_food_facade.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: reacon_customerFacade)
class FirebaseFoodFacade implements reacon_customerFacade {
  final FirebaseFirestore _firestore;

  FirebaseFoodFacade(this._firestore);

  @override
  Stream<Either<FoodFailure, FoodModel>> getFood({required String id}) async* {
    // TODO: implement getFoodByCategory
    throw UnimplementedError();
  }

  @override
  Stream<Either<FoodFailure, List<FoodModel>>> getFoodByCategory(
      {required String category}) async* {
    final collection =
        await _firestore.collection('Food').where('Category' == category);

    yield* collection
        .snapshots()
        .map((snapshot) => right<FoodFailure, List<FoodModel>>(
              snapshot.docs
                  .map(
                    (doc) => FoodModel.fromJson(doc.data()),
                  )
                  .toList(),
            ))
        .onErrorReturn(left(FoodFailure.serverError()));
  }

  @override
  Stream<Either<FoodFailure, List<FoodModel>>> getFoods() async* {
    final collection = await _firestore.collection('Food');

    yield* collection
        .snapshots()
        .map((snapshot) => right<FoodFailure, List<FoodModel>>(
              snapshot.docs
                  .map(
                    (doc) => FoodModel.fromJson(doc.data()),
                  )
                  .toList(),
            ))
        .onErrorReturn(left(FoodFailure.serverError()));
  }

  @override
  Future<Either<FoodFailure, List<FoodModel>>> foods() async {
    List<FoodModel> foods = [];
    try {
      final collection = await _firestore.collection('Category').get();

      for (int i = 0; i < collection.docs.length; i++) {
        final result = await _firestore
            .collection('Category')
            .doc(collection.docs[i].id)
            .collection('subcategories')
            .get();
        for (int j = 0; j < result.docs.length; j++) {
          final res = await _firestore
              .collection('Category')
              .doc(collection.docs[i].id)
              .collection('subcategories')
              .doc(result.docs[j].id)
              .collection('foods')
              .get();

          foods.addAll(res.docs.map((e) => FoodModel.fromJson(e.data())));
        }
      }

      return right(foods);
    } catch (e) {
      print(e);
      return left(
        FoodFailure.serverError(),
      );
    }
  }

  @override
  Future<Either<FoodFailure, List<FoodModel>>> foodByCategory({
    required String category,
  }) async {
    try {
      final result = await _firestore
          .collection("Category")
          .doc(category)
          .collection('subcategories')
          .get();
      List<FoodModel> foods = [];
      for (int i = 0; i < result.docs.length; i++) {
        final res = await _firestore
            .collection('Category')
            .doc(category)
            .collection('subcategories')
            .doc(result.docs[i].id)
            .collection('foods')
            .get();

        foods.addAll(res.docs.map((e) => FoodModel.fromJson(e.data())));
      }

      return right(foods);
    } catch (e) {
      print(e);
      return left(
        FoodFailure.serverError(),
      );
    }
  }

  @override
  Future<Either<FoodFailure, List<FoodModel>>> foodBySubcategory({
    required String category,
    required String subcategory,
  })async {
    try {

      List<FoodModel> foods = [];

        final res = await _firestore
            .collection('Category')
            .doc(category)
            .collection('subcategories')
            .doc(subcategory)
            .collection('foods')
            .get();

        foods.addAll(res.docs.map((e) => FoodModel.fromJson(e.data())));


      return right(foods);
    } catch (e) {
      print(e);
      return left(
        FoodFailure.serverError(),
      );
    }
  }
}
