// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'category_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CategoryEventTearOff {
  const _$CategoryEventTearOff();

  GetCategories getCategories() {
    return const GetCategories();
  }

  GetSubcategories getSubcategories(String category) {
    return GetSubcategories(
      category,
    );
  }
}

/// @nodoc
const $CategoryEvent = _$CategoryEventTearOff();

/// @nodoc
mixin _$CategoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCategories,
    required TResult Function(String category) getSubcategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getCategories,
    TResult Function(String category)? getSubcategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCategories,
    TResult Function(String category)? getSubcategories,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCategories value) getCategories,
    required TResult Function(GetSubcategories value) getSubcategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetCategories value)? getCategories,
    TResult Function(GetSubcategories value)? getSubcategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCategories value)? getCategories,
    TResult Function(GetSubcategories value)? getSubcategories,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryEventCopyWith<$Res> {
  factory $CategoryEventCopyWith(
          CategoryEvent value, $Res Function(CategoryEvent) then) =
      _$CategoryEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CategoryEventCopyWithImpl<$Res>
    implements $CategoryEventCopyWith<$Res> {
  _$CategoryEventCopyWithImpl(this._value, this._then);

  final CategoryEvent _value;
  // ignore: unused_field
  final $Res Function(CategoryEvent) _then;
}

/// @nodoc
abstract class $GetCategoriesCopyWith<$Res> {
  factory $GetCategoriesCopyWith(
          GetCategories value, $Res Function(GetCategories) then) =
      _$GetCategoriesCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetCategoriesCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res>
    implements $GetCategoriesCopyWith<$Res> {
  _$GetCategoriesCopyWithImpl(
      GetCategories _value, $Res Function(GetCategories) _then)
      : super(_value, (v) => _then(v as GetCategories));

  @override
  GetCategories get _value => super._value as GetCategories;
}

/// @nodoc

class _$GetCategories implements GetCategories {
  const _$GetCategories();

  @override
  String toString() {
    return 'CategoryEvent.getCategories()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetCategories);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCategories,
    required TResult Function(String category) getSubcategories,
  }) {
    return getCategories();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getCategories,
    TResult Function(String category)? getSubcategories,
  }) {
    return getCategories?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCategories,
    TResult Function(String category)? getSubcategories,
    required TResult orElse(),
  }) {
    if (getCategories != null) {
      return getCategories();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCategories value) getCategories,
    required TResult Function(GetSubcategories value) getSubcategories,
  }) {
    return getCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetCategories value)? getCategories,
    TResult Function(GetSubcategories value)? getSubcategories,
  }) {
    return getCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCategories value)? getCategories,
    TResult Function(GetSubcategories value)? getSubcategories,
    required TResult orElse(),
  }) {
    if (getCategories != null) {
      return getCategories(this);
    }
    return orElse();
  }
}

abstract class GetCategories implements CategoryEvent {
  const factory GetCategories() = _$GetCategories;
}

/// @nodoc
abstract class $GetSubcategoriesCopyWith<$Res> {
  factory $GetSubcategoriesCopyWith(
          GetSubcategories value, $Res Function(GetSubcategories) then) =
      _$GetSubcategoriesCopyWithImpl<$Res>;
  $Res call({String category});
}

/// @nodoc
class _$GetSubcategoriesCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res>
    implements $GetSubcategoriesCopyWith<$Res> {
  _$GetSubcategoriesCopyWithImpl(
      GetSubcategories _value, $Res Function(GetSubcategories) _then)
      : super(_value, (v) => _then(v as GetSubcategories));

  @override
  GetSubcategories get _value => super._value as GetSubcategories;

  @override
  $Res call({
    Object? category = freezed,
  }) {
    return _then(GetSubcategories(
      category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetSubcategories implements GetSubcategories {
  const _$GetSubcategories(this.category);

  @override
  final String category;

  @override
  String toString() {
    return 'CategoryEvent.getSubcategories(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetSubcategories &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(category);

  @JsonKey(ignore: true)
  @override
  $GetSubcategoriesCopyWith<GetSubcategories> get copyWith =>
      _$GetSubcategoriesCopyWithImpl<GetSubcategories>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCategories,
    required TResult Function(String category) getSubcategories,
  }) {
    return getSubcategories(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getCategories,
    TResult Function(String category)? getSubcategories,
  }) {
    return getSubcategories?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCategories,
    TResult Function(String category)? getSubcategories,
    required TResult orElse(),
  }) {
    if (getSubcategories != null) {
      return getSubcategories(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCategories value) getCategories,
    required TResult Function(GetSubcategories value) getSubcategories,
  }) {
    return getSubcategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetCategories value)? getCategories,
    TResult Function(GetSubcategories value)? getSubcategories,
  }) {
    return getSubcategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCategories value)? getCategories,
    TResult Function(GetSubcategories value)? getSubcategories,
    required TResult orElse(),
  }) {
    if (getSubcategories != null) {
      return getSubcategories(this);
    }
    return orElse();
  }
}

abstract class GetSubcategories implements CategoryEvent {
  const factory GetSubcategories(String category) = _$GetSubcategories;

  String get category => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetSubcategoriesCopyWith<GetSubcategories> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CategoryStateTearOff {
  const _$CategoryStateTearOff();

  _CategoryState call(
      {required Category category,
      required bool loading,
      required List<Category> categories,
      required List<Subcategory> subcategories}) {
    return _CategoryState(
      category: category,
      loading: loading,
      categories: categories,
      subcategories: subcategories,
    );
  }
}

/// @nodoc
const $CategoryState = _$CategoryStateTearOff();

/// @nodoc
mixin _$CategoryState {
  Category get category => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  List<Category> get categories => throw _privateConstructorUsedError;
  List<Subcategory> get subcategories => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryStateCopyWith<CategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryStateCopyWith<$Res> {
  factory $CategoryStateCopyWith(
          CategoryState value, $Res Function(CategoryState) then) =
      _$CategoryStateCopyWithImpl<$Res>;
  $Res call(
      {Category category,
      bool loading,
      List<Category> categories,
      List<Subcategory> subcategories});
}

/// @nodoc
class _$CategoryStateCopyWithImpl<$Res>
    implements $CategoryStateCopyWith<$Res> {
  _$CategoryStateCopyWithImpl(this._value, this._then);

  final CategoryState _value;
  // ignore: unused_field
  final $Res Function(CategoryState) _then;

  @override
  $Res call({
    Object? category = freezed,
    Object? loading = freezed,
    Object? categories = freezed,
    Object? subcategories = freezed,
  }) {
    return _then(_value.copyWith(
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      subcategories: subcategories == freezed
          ? _value.subcategories
          : subcategories // ignore: cast_nullable_to_non_nullable
              as List<Subcategory>,
    ));
  }
}

/// @nodoc
abstract class _$CategoryStateCopyWith<$Res>
    implements $CategoryStateCopyWith<$Res> {
  factory _$CategoryStateCopyWith(
          _CategoryState value, $Res Function(_CategoryState) then) =
      __$CategoryStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Category category,
      bool loading,
      List<Category> categories,
      List<Subcategory> subcategories});
}

/// @nodoc
class __$CategoryStateCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res>
    implements _$CategoryStateCopyWith<$Res> {
  __$CategoryStateCopyWithImpl(
      _CategoryState _value, $Res Function(_CategoryState) _then)
      : super(_value, (v) => _then(v as _CategoryState));

  @override
  _CategoryState get _value => super._value as _CategoryState;

  @override
  $Res call({
    Object? category = freezed,
    Object? loading = freezed,
    Object? categories = freezed,
    Object? subcategories = freezed,
  }) {
    return _then(_CategoryState(
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      subcategories: subcategories == freezed
          ? _value.subcategories
          : subcategories // ignore: cast_nullable_to_non_nullable
              as List<Subcategory>,
    ));
  }
}

/// @nodoc

class _$_CategoryState implements _CategoryState {
  const _$_CategoryState(
      {required this.category,
      required this.loading,
      required this.categories,
      required this.subcategories});

  @override
  final Category category;
  @override
  final bool loading;
  @override
  final List<Category> categories;
  @override
  final List<Subcategory> subcategories;

  @override
  String toString() {
    return 'CategoryState(category: $category, loading: $loading, categories: $categories, subcategories: $subcategories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CategoryState &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality()
                    .equals(other.loading, loading)) &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)) &&
            (identical(other.subcategories, subcategories) ||
                const DeepCollectionEquality()
                    .equals(other.subcategories, subcategories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(loading) ^
      const DeepCollectionEquality().hash(categories) ^
      const DeepCollectionEquality().hash(subcategories);

  @JsonKey(ignore: true)
  @override
  _$CategoryStateCopyWith<_CategoryState> get copyWith =>
      __$CategoryStateCopyWithImpl<_CategoryState>(this, _$identity);
}

abstract class _CategoryState implements CategoryState {
  const factory _CategoryState(
      {required Category category,
      required bool loading,
      required List<Category> categories,
      required List<Subcategory> subcategories}) = _$_CategoryState;

  @override
  Category get category => throw _privateConstructorUsedError;
  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  List<Category> get categories => throw _privateConstructorUsedError;
  @override
  List<Subcategory> get subcategories => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CategoryStateCopyWith<_CategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
