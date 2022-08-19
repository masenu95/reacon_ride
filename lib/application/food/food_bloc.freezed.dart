// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'food_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FoodEventTearOff {
  const _$FoodEventTearOff();

  _GetFoods getFoods() {
    return const _GetFoods();
  }

  _GetFood getFood(FoodModel food) {
    return _GetFood(
      food,
    );
  }

  _GetByCategory getByCategory(String category) {
    return _GetByCategory(
      category,
    );
  }

  _GetBySubcategory getBySubcategory(String subcategory) {
    return _GetBySubcategory(
      subcategory,
    );
  }

  _FoodReceived foodReceived(Either<FoodFailure, List<FoodModel>> foods) {
    return _FoodReceived(
      foods,
    );
  }
}

/// @nodoc
const $FoodEvent = _$FoodEventTearOff();

/// @nodoc
mixin _$FoodEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFoods,
    required TResult Function(FoodModel food) getFood,
    required TResult Function(String category) getByCategory,
    required TResult Function(String subcategory) getBySubcategory,
    required TResult Function(Either<FoodFailure, List<FoodModel>> foods)
        foodReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getFoods,
    TResult Function(FoodModel food)? getFood,
    TResult Function(String category)? getByCategory,
    TResult Function(String subcategory)? getBySubcategory,
    TResult Function(Either<FoodFailure, List<FoodModel>> foods)? foodReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFoods,
    TResult Function(FoodModel food)? getFood,
    TResult Function(String category)? getByCategory,
    TResult Function(String subcategory)? getBySubcategory,
    TResult Function(Either<FoodFailure, List<FoodModel>> foods)? foodReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFoods value) getFoods,
    required TResult Function(_GetFood value) getFood,
    required TResult Function(_GetByCategory value) getByCategory,
    required TResult Function(_GetBySubcategory value) getBySubcategory,
    required TResult Function(_FoodReceived value) foodReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetFoods value)? getFoods,
    TResult Function(_GetFood value)? getFood,
    TResult Function(_GetByCategory value)? getByCategory,
    TResult Function(_GetBySubcategory value)? getBySubcategory,
    TResult Function(_FoodReceived value)? foodReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFoods value)? getFoods,
    TResult Function(_GetFood value)? getFood,
    TResult Function(_GetByCategory value)? getByCategory,
    TResult Function(_GetBySubcategory value)? getBySubcategory,
    TResult Function(_FoodReceived value)? foodReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodEventCopyWith<$Res> {
  factory $FoodEventCopyWith(FoodEvent value, $Res Function(FoodEvent) then) =
      _$FoodEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FoodEventCopyWithImpl<$Res> implements $FoodEventCopyWith<$Res> {
  _$FoodEventCopyWithImpl(this._value, this._then);

  final FoodEvent _value;
  // ignore: unused_field
  final $Res Function(FoodEvent) _then;
}

/// @nodoc
abstract class _$GetFoodsCopyWith<$Res> {
  factory _$GetFoodsCopyWith(_GetFoods value, $Res Function(_GetFoods) then) =
      __$GetFoodsCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetFoodsCopyWithImpl<$Res> extends _$FoodEventCopyWithImpl<$Res>
    implements _$GetFoodsCopyWith<$Res> {
  __$GetFoodsCopyWithImpl(_GetFoods _value, $Res Function(_GetFoods) _then)
      : super(_value, (v) => _then(v as _GetFoods));

  @override
  _GetFoods get _value => super._value as _GetFoods;
}

/// @nodoc

class _$_GetFoods implements _GetFoods {
  const _$_GetFoods();

  @override
  String toString() {
    return 'FoodEvent.getFoods()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetFoods);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFoods,
    required TResult Function(FoodModel food) getFood,
    required TResult Function(String category) getByCategory,
    required TResult Function(String subcategory) getBySubcategory,
    required TResult Function(Either<FoodFailure, List<FoodModel>> foods)
        foodReceived,
  }) {
    return getFoods();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getFoods,
    TResult Function(FoodModel food)? getFood,
    TResult Function(String category)? getByCategory,
    TResult Function(String subcategory)? getBySubcategory,
    TResult Function(Either<FoodFailure, List<FoodModel>> foods)? foodReceived,
  }) {
    return getFoods?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFoods,
    TResult Function(FoodModel food)? getFood,
    TResult Function(String category)? getByCategory,
    TResult Function(String subcategory)? getBySubcategory,
    TResult Function(Either<FoodFailure, List<FoodModel>> foods)? foodReceived,
    required TResult orElse(),
  }) {
    if (getFoods != null) {
      return getFoods();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFoods value) getFoods,
    required TResult Function(_GetFood value) getFood,
    required TResult Function(_GetByCategory value) getByCategory,
    required TResult Function(_GetBySubcategory value) getBySubcategory,
    required TResult Function(_FoodReceived value) foodReceived,
  }) {
    return getFoods(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetFoods value)? getFoods,
    TResult Function(_GetFood value)? getFood,
    TResult Function(_GetByCategory value)? getByCategory,
    TResult Function(_GetBySubcategory value)? getBySubcategory,
    TResult Function(_FoodReceived value)? foodReceived,
  }) {
    return getFoods?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFoods value)? getFoods,
    TResult Function(_GetFood value)? getFood,
    TResult Function(_GetByCategory value)? getByCategory,
    TResult Function(_GetBySubcategory value)? getBySubcategory,
    TResult Function(_FoodReceived value)? foodReceived,
    required TResult orElse(),
  }) {
    if (getFoods != null) {
      return getFoods(this);
    }
    return orElse();
  }
}

abstract class _GetFoods implements FoodEvent {
  const factory _GetFoods() = _$_GetFoods;
}

/// @nodoc
abstract class _$GetFoodCopyWith<$Res> {
  factory _$GetFoodCopyWith(_GetFood value, $Res Function(_GetFood) then) =
      __$GetFoodCopyWithImpl<$Res>;
  $Res call({FoodModel food});
}

/// @nodoc
class __$GetFoodCopyWithImpl<$Res> extends _$FoodEventCopyWithImpl<$Res>
    implements _$GetFoodCopyWith<$Res> {
  __$GetFoodCopyWithImpl(_GetFood _value, $Res Function(_GetFood) _then)
      : super(_value, (v) => _then(v as _GetFood));

  @override
  _GetFood get _value => super._value as _GetFood;

  @override
  $Res call({
    Object? food = freezed,
  }) {
    return _then(_GetFood(
      food == freezed
          ? _value.food
          : food // ignore: cast_nullable_to_non_nullable
              as FoodModel,
    ));
  }
}

/// @nodoc

class _$_GetFood implements _GetFood {
  const _$_GetFood(this.food);

  @override
  final FoodModel food;

  @override
  String toString() {
    return 'FoodEvent.getFood(food: $food)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetFood &&
            (identical(other.food, food) ||
                const DeepCollectionEquality().equals(other.food, food)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(food);

  @JsonKey(ignore: true)
  @override
  _$GetFoodCopyWith<_GetFood> get copyWith =>
      __$GetFoodCopyWithImpl<_GetFood>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFoods,
    required TResult Function(FoodModel food) getFood,
    required TResult Function(String category) getByCategory,
    required TResult Function(String subcategory) getBySubcategory,
    required TResult Function(Either<FoodFailure, List<FoodModel>> foods)
        foodReceived,
  }) {
    return getFood(food);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getFoods,
    TResult Function(FoodModel food)? getFood,
    TResult Function(String category)? getByCategory,
    TResult Function(String subcategory)? getBySubcategory,
    TResult Function(Either<FoodFailure, List<FoodModel>> foods)? foodReceived,
  }) {
    return getFood?.call(food);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFoods,
    TResult Function(FoodModel food)? getFood,
    TResult Function(String category)? getByCategory,
    TResult Function(String subcategory)? getBySubcategory,
    TResult Function(Either<FoodFailure, List<FoodModel>> foods)? foodReceived,
    required TResult orElse(),
  }) {
    if (getFood != null) {
      return getFood(food);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFoods value) getFoods,
    required TResult Function(_GetFood value) getFood,
    required TResult Function(_GetByCategory value) getByCategory,
    required TResult Function(_GetBySubcategory value) getBySubcategory,
    required TResult Function(_FoodReceived value) foodReceived,
  }) {
    return getFood(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetFoods value)? getFoods,
    TResult Function(_GetFood value)? getFood,
    TResult Function(_GetByCategory value)? getByCategory,
    TResult Function(_GetBySubcategory value)? getBySubcategory,
    TResult Function(_FoodReceived value)? foodReceived,
  }) {
    return getFood?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFoods value)? getFoods,
    TResult Function(_GetFood value)? getFood,
    TResult Function(_GetByCategory value)? getByCategory,
    TResult Function(_GetBySubcategory value)? getBySubcategory,
    TResult Function(_FoodReceived value)? foodReceived,
    required TResult orElse(),
  }) {
    if (getFood != null) {
      return getFood(this);
    }
    return orElse();
  }
}

abstract class _GetFood implements FoodEvent {
  const factory _GetFood(FoodModel food) = _$_GetFood;

  FoodModel get food => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetFoodCopyWith<_GetFood> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetByCategoryCopyWith<$Res> {
  factory _$GetByCategoryCopyWith(
          _GetByCategory value, $Res Function(_GetByCategory) then) =
      __$GetByCategoryCopyWithImpl<$Res>;
  $Res call({String category});
}

/// @nodoc
class __$GetByCategoryCopyWithImpl<$Res> extends _$FoodEventCopyWithImpl<$Res>
    implements _$GetByCategoryCopyWith<$Res> {
  __$GetByCategoryCopyWithImpl(
      _GetByCategory _value, $Res Function(_GetByCategory) _then)
      : super(_value, (v) => _then(v as _GetByCategory));

  @override
  _GetByCategory get _value => super._value as _GetByCategory;

  @override
  $Res call({
    Object? category = freezed,
  }) {
    return _then(_GetByCategory(
      category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetByCategory implements _GetByCategory {
  const _$_GetByCategory(this.category);

  @override
  final String category;

  @override
  String toString() {
    return 'FoodEvent.getByCategory(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetByCategory &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(category);

  @JsonKey(ignore: true)
  @override
  _$GetByCategoryCopyWith<_GetByCategory> get copyWith =>
      __$GetByCategoryCopyWithImpl<_GetByCategory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFoods,
    required TResult Function(FoodModel food) getFood,
    required TResult Function(String category) getByCategory,
    required TResult Function(String subcategory) getBySubcategory,
    required TResult Function(Either<FoodFailure, List<FoodModel>> foods)
        foodReceived,
  }) {
    return getByCategory(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getFoods,
    TResult Function(FoodModel food)? getFood,
    TResult Function(String category)? getByCategory,
    TResult Function(String subcategory)? getBySubcategory,
    TResult Function(Either<FoodFailure, List<FoodModel>> foods)? foodReceived,
  }) {
    return getByCategory?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFoods,
    TResult Function(FoodModel food)? getFood,
    TResult Function(String category)? getByCategory,
    TResult Function(String subcategory)? getBySubcategory,
    TResult Function(Either<FoodFailure, List<FoodModel>> foods)? foodReceived,
    required TResult orElse(),
  }) {
    if (getByCategory != null) {
      return getByCategory(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFoods value) getFoods,
    required TResult Function(_GetFood value) getFood,
    required TResult Function(_GetByCategory value) getByCategory,
    required TResult Function(_GetBySubcategory value) getBySubcategory,
    required TResult Function(_FoodReceived value) foodReceived,
  }) {
    return getByCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetFoods value)? getFoods,
    TResult Function(_GetFood value)? getFood,
    TResult Function(_GetByCategory value)? getByCategory,
    TResult Function(_GetBySubcategory value)? getBySubcategory,
    TResult Function(_FoodReceived value)? foodReceived,
  }) {
    return getByCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFoods value)? getFoods,
    TResult Function(_GetFood value)? getFood,
    TResult Function(_GetByCategory value)? getByCategory,
    TResult Function(_GetBySubcategory value)? getBySubcategory,
    TResult Function(_FoodReceived value)? foodReceived,
    required TResult orElse(),
  }) {
    if (getByCategory != null) {
      return getByCategory(this);
    }
    return orElse();
  }
}

abstract class _GetByCategory implements FoodEvent {
  const factory _GetByCategory(String category) = _$_GetByCategory;

  String get category => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetByCategoryCopyWith<_GetByCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetBySubcategoryCopyWith<$Res> {
  factory _$GetBySubcategoryCopyWith(
          _GetBySubcategory value, $Res Function(_GetBySubcategory) then) =
      __$GetBySubcategoryCopyWithImpl<$Res>;
  $Res call({String subcategory});
}

/// @nodoc
class __$GetBySubcategoryCopyWithImpl<$Res>
    extends _$FoodEventCopyWithImpl<$Res>
    implements _$GetBySubcategoryCopyWith<$Res> {
  __$GetBySubcategoryCopyWithImpl(
      _GetBySubcategory _value, $Res Function(_GetBySubcategory) _then)
      : super(_value, (v) => _then(v as _GetBySubcategory));

  @override
  _GetBySubcategory get _value => super._value as _GetBySubcategory;

  @override
  $Res call({
    Object? subcategory = freezed,
  }) {
    return _then(_GetBySubcategory(
      subcategory == freezed
          ? _value.subcategory
          : subcategory // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetBySubcategory implements _GetBySubcategory {
  const _$_GetBySubcategory(this.subcategory);

  @override
  final String subcategory;

  @override
  String toString() {
    return 'FoodEvent.getBySubcategory(subcategory: $subcategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetBySubcategory &&
            (identical(other.subcategory, subcategory) ||
                const DeepCollectionEquality()
                    .equals(other.subcategory, subcategory)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(subcategory);

  @JsonKey(ignore: true)
  @override
  _$GetBySubcategoryCopyWith<_GetBySubcategory> get copyWith =>
      __$GetBySubcategoryCopyWithImpl<_GetBySubcategory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFoods,
    required TResult Function(FoodModel food) getFood,
    required TResult Function(String category) getByCategory,
    required TResult Function(String subcategory) getBySubcategory,
    required TResult Function(Either<FoodFailure, List<FoodModel>> foods)
        foodReceived,
  }) {
    return getBySubcategory(subcategory);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getFoods,
    TResult Function(FoodModel food)? getFood,
    TResult Function(String category)? getByCategory,
    TResult Function(String subcategory)? getBySubcategory,
    TResult Function(Either<FoodFailure, List<FoodModel>> foods)? foodReceived,
  }) {
    return getBySubcategory?.call(subcategory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFoods,
    TResult Function(FoodModel food)? getFood,
    TResult Function(String category)? getByCategory,
    TResult Function(String subcategory)? getBySubcategory,
    TResult Function(Either<FoodFailure, List<FoodModel>> foods)? foodReceived,
    required TResult orElse(),
  }) {
    if (getBySubcategory != null) {
      return getBySubcategory(subcategory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFoods value) getFoods,
    required TResult Function(_GetFood value) getFood,
    required TResult Function(_GetByCategory value) getByCategory,
    required TResult Function(_GetBySubcategory value) getBySubcategory,
    required TResult Function(_FoodReceived value) foodReceived,
  }) {
    return getBySubcategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetFoods value)? getFoods,
    TResult Function(_GetFood value)? getFood,
    TResult Function(_GetByCategory value)? getByCategory,
    TResult Function(_GetBySubcategory value)? getBySubcategory,
    TResult Function(_FoodReceived value)? foodReceived,
  }) {
    return getBySubcategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFoods value)? getFoods,
    TResult Function(_GetFood value)? getFood,
    TResult Function(_GetByCategory value)? getByCategory,
    TResult Function(_GetBySubcategory value)? getBySubcategory,
    TResult Function(_FoodReceived value)? foodReceived,
    required TResult orElse(),
  }) {
    if (getBySubcategory != null) {
      return getBySubcategory(this);
    }
    return orElse();
  }
}

abstract class _GetBySubcategory implements FoodEvent {
  const factory _GetBySubcategory(String subcategory) = _$_GetBySubcategory;

  String get subcategory => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetBySubcategoryCopyWith<_GetBySubcategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FoodReceivedCopyWith<$Res> {
  factory _$FoodReceivedCopyWith(
          _FoodReceived value, $Res Function(_FoodReceived) then) =
      __$FoodReceivedCopyWithImpl<$Res>;
  $Res call({Either<FoodFailure, List<FoodModel>> foods});
}

/// @nodoc
class __$FoodReceivedCopyWithImpl<$Res> extends _$FoodEventCopyWithImpl<$Res>
    implements _$FoodReceivedCopyWith<$Res> {
  __$FoodReceivedCopyWithImpl(
      _FoodReceived _value, $Res Function(_FoodReceived) _then)
      : super(_value, (v) => _then(v as _FoodReceived));

  @override
  _FoodReceived get _value => super._value as _FoodReceived;

  @override
  $Res call({
    Object? foods = freezed,
  }) {
    return _then(_FoodReceived(
      foods == freezed
          ? _value.foods
          : foods // ignore: cast_nullable_to_non_nullable
              as Either<FoodFailure, List<FoodModel>>,
    ));
  }
}

/// @nodoc

class _$_FoodReceived implements _FoodReceived {
  const _$_FoodReceived(this.foods);

  @override
  final Either<FoodFailure, List<FoodModel>> foods;

  @override
  String toString() {
    return 'FoodEvent.foodReceived(foods: $foods)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FoodReceived &&
            (identical(other.foods, foods) ||
                const DeepCollectionEquality().equals(other.foods, foods)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(foods);

  @JsonKey(ignore: true)
  @override
  _$FoodReceivedCopyWith<_FoodReceived> get copyWith =>
      __$FoodReceivedCopyWithImpl<_FoodReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFoods,
    required TResult Function(FoodModel food) getFood,
    required TResult Function(String category) getByCategory,
    required TResult Function(String subcategory) getBySubcategory,
    required TResult Function(Either<FoodFailure, List<FoodModel>> foods)
        foodReceived,
  }) {
    return foodReceived(foods);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getFoods,
    TResult Function(FoodModel food)? getFood,
    TResult Function(String category)? getByCategory,
    TResult Function(String subcategory)? getBySubcategory,
    TResult Function(Either<FoodFailure, List<FoodModel>> foods)? foodReceived,
  }) {
    return foodReceived?.call(foods);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFoods,
    TResult Function(FoodModel food)? getFood,
    TResult Function(String category)? getByCategory,
    TResult Function(String subcategory)? getBySubcategory,
    TResult Function(Either<FoodFailure, List<FoodModel>> foods)? foodReceived,
    required TResult orElse(),
  }) {
    if (foodReceived != null) {
      return foodReceived(foods);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFoods value) getFoods,
    required TResult Function(_GetFood value) getFood,
    required TResult Function(_GetByCategory value) getByCategory,
    required TResult Function(_GetBySubcategory value) getBySubcategory,
    required TResult Function(_FoodReceived value) foodReceived,
  }) {
    return foodReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetFoods value)? getFoods,
    TResult Function(_GetFood value)? getFood,
    TResult Function(_GetByCategory value)? getByCategory,
    TResult Function(_GetBySubcategory value)? getBySubcategory,
    TResult Function(_FoodReceived value)? foodReceived,
  }) {
    return foodReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFoods value)? getFoods,
    TResult Function(_GetFood value)? getFood,
    TResult Function(_GetByCategory value)? getByCategory,
    TResult Function(_GetBySubcategory value)? getBySubcategory,
    TResult Function(_FoodReceived value)? foodReceived,
    required TResult orElse(),
  }) {
    if (foodReceived != null) {
      return foodReceived(this);
    }
    return orElse();
  }
}

abstract class _FoodReceived implements FoodEvent {
  const factory _FoodReceived(Either<FoodFailure, List<FoodModel>> foods) =
      _$_FoodReceived;

  Either<FoodFailure, List<FoodModel>> get foods =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FoodReceivedCopyWith<_FoodReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$FoodStateTearOff {
  const _$FoodStateTearOff();

  _FoodState call(
      {required List<FoodModel> foods,
      required FoodModel food,
      required List<FoodModel> foodsCat,
      required bool loading,
      required String category}) {
    return _FoodState(
      foods: foods,
      food: food,
      foodsCat: foodsCat,
      loading: loading,
      category: category,
    );
  }
}

/// @nodoc
const $FoodState = _$FoodStateTearOff();

/// @nodoc
mixin _$FoodState {
  List<FoodModel> get foods => throw _privateConstructorUsedError;
  FoodModel get food => throw _privateConstructorUsedError;
  List<FoodModel> get foodsCat => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FoodStateCopyWith<FoodState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodStateCopyWith<$Res> {
  factory $FoodStateCopyWith(FoodState value, $Res Function(FoodState) then) =
      _$FoodStateCopyWithImpl<$Res>;
  $Res call(
      {List<FoodModel> foods,
      FoodModel food,
      List<FoodModel> foodsCat,
      bool loading,
      String category});
}

/// @nodoc
class _$FoodStateCopyWithImpl<$Res> implements $FoodStateCopyWith<$Res> {
  _$FoodStateCopyWithImpl(this._value, this._then);

  final FoodState _value;
  // ignore: unused_field
  final $Res Function(FoodState) _then;

  @override
  $Res call({
    Object? foods = freezed,
    Object? food = freezed,
    Object? foodsCat = freezed,
    Object? loading = freezed,
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      foods: foods == freezed
          ? _value.foods
          : foods // ignore: cast_nullable_to_non_nullable
              as List<FoodModel>,
      food: food == freezed
          ? _value.food
          : food // ignore: cast_nullable_to_non_nullable
              as FoodModel,
      foodsCat: foodsCat == freezed
          ? _value.foodsCat
          : foodsCat // ignore: cast_nullable_to_non_nullable
              as List<FoodModel>,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$FoodStateCopyWith<$Res> implements $FoodStateCopyWith<$Res> {
  factory _$FoodStateCopyWith(
          _FoodState value, $Res Function(_FoodState) then) =
      __$FoodStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<FoodModel> foods,
      FoodModel food,
      List<FoodModel> foodsCat,
      bool loading,
      String category});
}

/// @nodoc
class __$FoodStateCopyWithImpl<$Res> extends _$FoodStateCopyWithImpl<$Res>
    implements _$FoodStateCopyWith<$Res> {
  __$FoodStateCopyWithImpl(_FoodState _value, $Res Function(_FoodState) _then)
      : super(_value, (v) => _then(v as _FoodState));

  @override
  _FoodState get _value => super._value as _FoodState;

  @override
  $Res call({
    Object? foods = freezed,
    Object? food = freezed,
    Object? foodsCat = freezed,
    Object? loading = freezed,
    Object? category = freezed,
  }) {
    return _then(_FoodState(
      foods: foods == freezed
          ? _value.foods
          : foods // ignore: cast_nullable_to_non_nullable
              as List<FoodModel>,
      food: food == freezed
          ? _value.food
          : food // ignore: cast_nullable_to_non_nullable
              as FoodModel,
      foodsCat: foodsCat == freezed
          ? _value.foodsCat
          : foodsCat // ignore: cast_nullable_to_non_nullable
              as List<FoodModel>,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FoodState implements _FoodState {
  const _$_FoodState(
      {required this.foods,
      required this.food,
      required this.foodsCat,
      required this.loading,
      required this.category});

  @override
  final List<FoodModel> foods;
  @override
  final FoodModel food;
  @override
  final List<FoodModel> foodsCat;
  @override
  final bool loading;
  @override
  final String category;

  @override
  String toString() {
    return 'FoodState(foods: $foods, food: $food, foodsCat: $foodsCat, loading: $loading, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FoodState &&
            (identical(other.foods, foods) ||
                const DeepCollectionEquality().equals(other.foods, foods)) &&
            (identical(other.food, food) ||
                const DeepCollectionEquality().equals(other.food, food)) &&
            (identical(other.foodsCat, foodsCat) ||
                const DeepCollectionEquality()
                    .equals(other.foodsCat, foodsCat)) &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality()
                    .equals(other.loading, loading)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(foods) ^
      const DeepCollectionEquality().hash(food) ^
      const DeepCollectionEquality().hash(foodsCat) ^
      const DeepCollectionEquality().hash(loading) ^
      const DeepCollectionEquality().hash(category);

  @JsonKey(ignore: true)
  @override
  _$FoodStateCopyWith<_FoodState> get copyWith =>
      __$FoodStateCopyWithImpl<_FoodState>(this, _$identity);
}

abstract class _FoodState implements FoodState {
  const factory _FoodState(
      {required List<FoodModel> foods,
      required FoodModel food,
      required List<FoodModel> foodsCat,
      required bool loading,
      required String category}) = _$_FoodState;

  @override
  List<FoodModel> get foods => throw _privateConstructorUsedError;
  @override
  FoodModel get food => throw _privateConstructorUsedError;
  @override
  List<FoodModel> get foodsCat => throw _privateConstructorUsedError;
  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  String get category => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FoodStateCopyWith<_FoodState> get copyWith =>
      throw _privateConstructorUsedError;
}
