part of 'food_bloc.dart';


@freezed
class FoodEvent with _$FoodEvent {
  const factory FoodEvent.getFoods() = _GetFoods;
  const factory FoodEvent.getFood(FoodModel food) = _GetFood;
  const factory FoodEvent.getByCategory(String category)=_GetByCategory;
  const factory FoodEvent.getBySubcategory(String subcategory) = _GetBySubcategory;
  const factory FoodEvent.foodReceived(Either<FoodFailure, List<FoodModel>> foods)=_FoodReceived;

}
