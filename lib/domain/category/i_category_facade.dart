import 'package:dartz/dartz.dart';
import 'package:reacon_customer/domain/category/category.dart';
import 'package:reacon_customer/domain/category/category_failure.dart';

abstract class ICategoryFacade{
  Future<Either<CategoryFailure,List<Category>>> getCategories();
  Future<Either<CategoryFailure,List<Subcategory>>> getsubategories(String category);
}