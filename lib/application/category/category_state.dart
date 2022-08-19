part of 'category_bloc.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState({
    required Category category,
    required bool loading,
    required List<Category> categories,
    required List<Subcategory> subcategories
  }) = _CategoryState;

  factory CategoryState.initial() => CategoryState(
        category: Category( title: ''),
        categories: [],
        subcategories: [],
        loading: false,
      );
}
