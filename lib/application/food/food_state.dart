part of 'food_bloc.dart';

@freezed
class FoodState with _$FoodState {
  const factory FoodState({
    required List<FoodModel> foods,
    required FoodModel food,
    required List<FoodModel> foodsCat,
    required bool loading,
    required String category,

  }) = _FoodState;

  factory FoodState.initial() =>
      FoodState(
        foods: [],
        category: "",
        loading: false,
        food: FoodModel(
          category: '',
          description: '',
          image: '',
          price: '',
          quantity: '',
          section: '',

          title: '',
        ), foodsCat: [],
      );
}
