import 'package:freezed_annotation/freezed_annotation.dart';
part 'food_failure.freezed.dart';

@freezed
class FoodFailure with _$FoodFailure{
  const factory FoodFailure.serverError() = _ServerError;
}