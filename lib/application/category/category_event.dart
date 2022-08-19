part of 'category_bloc.dart';

@freezed
class CategoryEvent with _$CategoryEvent{
  const factory CategoryEvent.getCategories() = GetCategories;
  const factory CategoryEvent.getSubcategories(String category) = GetSubcategories;


}

