import 'package:dartz/dartz.dart';
import 'package:reacon_customer/domain/food/Food.dart';
import 'package:reacon_customer/domain/food/food_failure.dart';

abstract class reacon_customerFacade {
  Stream<Either<FoodFailure, List<FoodModel>>> getFoods();

  Stream<Either<FoodFailure, FoodModel>> getFood({
    required String id,
  });

  Stream<Either<FoodFailure, List<FoodModel>>> getFoodByCategory({
    required String category,
  });

  Future<Either<FoodFailure, List<FoodModel>>> foodByCategory({
    required String category,
  });

  Future<Either<FoodFailure, List<FoodModel>>> foodBySubcategory({
    required String category,
    required String subcategory,
  });

  Future<Either<FoodFailure, List<FoodModel>>> foods();
}
