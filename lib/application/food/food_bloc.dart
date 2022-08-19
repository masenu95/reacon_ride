import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reacon_customer/domain/food/Food.dart';
import 'package:reacon_customer/domain/food/food_failure.dart';
import 'package:reacon_customer/domain/food/i_food_facade.dart';
import 'package:injectable/injectable.dart';

part 'food_bloc.freezed.dart';

part 'food_event.dart';

part 'food_state.dart';

@injectable
class FoodBloc extends Bloc<FoodEvent, FoodState> {
  final reacon_customerFacade _foodFacade;

  FoodBloc(this._foodFacade) : super(FoodState.initial());

  late StreamSubscription<Either<FoodFailure, List<FoodModel>>>
      _foodStreamSubscription;

  @override
  Stream<FoodState> mapEventToState(
    FoodEvent event,
  ) async* {
    yield* event.map(
      getFoods: (e) async* {
        yield state.copyWith(
          loading: true,
        );
        List<FoodModel> food = [];
        Either<FoodFailure, List<FoodModel>> foods = await _foodFacade.foods();
        foods.fold((l) => null, (r) => food = r);

        yield state.copyWith(
          loading: false,
          foods: food,
        );
      },
      foodReceived: (e) async* {
        yield e.foods.fold(
          (l) => state.copyWith(),
          (r) => state.copyWith(foods: r),
        );
      },
      getByCategory: (e) async* {
        yield state.copyWith(
          loading: true,
          foodsCat: [],
        );
        List<FoodModel> food = [];

        Either<FoodFailure, List<FoodModel>> foods =
            await _foodFacade.foodByCategory(category: e.category);

        foods.fold((l) => null, (r) => food = r);
        yield state.copyWith(
          loading: false,
          foodsCat: food,
          category: e.category,
        );
      },
      getFood: (e) async* {
        yield state.copyWith(
          food: e.food,
        );
      },
      getBySubcategory: (e) async* {
        yield state.copyWith(
          loading: true,
          foodsCat: [],
        );
        List<FoodModel> food = [];

        Either<FoodFailure, List<FoodModel>> foods =
        await _foodFacade.foodBySubcategory(category: state.category,subcategory: e.subcategory);

        foods.fold((l) => null, (r) => food = r);
        yield state.copyWith(
          loading: false,
          foodsCat: food,

        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _foodStreamSubscription.cancel();
    return super.close();
  }
}
