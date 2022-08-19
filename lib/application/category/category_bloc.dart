import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reacon_customer/domain/category/category.dart';
import 'package:reacon_customer/domain/category/category_failure.dart';
import 'package:reacon_customer/domain/category/i_category_facade.dart';
import 'package:injectable/injectable.dart';

part 'category_bloc.freezed.dart';

part 'category_event.dart';

part 'category_state.dart';

@injectable
class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc(this._categoryFacade) : super(CategoryState.initial());

  final ICategoryFacade _categoryFacade;

  @override
  Stream<CategoryState> mapEventToState(CategoryEvent event) async* {
    yield* event.map(
      getCategories: (e) async* {
        yield state.copyWith(
          loading: true,
        );
        final Either<CategoryFailure, List<Category>> result =
            await _categoryFacade.getCategories();

        List<Category> categories = [];
        result.fold((l) => null, (r) => categories = r);

        yield state.copyWith(
          loading: false,
          categories: categories,
        );
      },
      getSubcategories: (e) async* {
        yield state.copyWith(
          loading: true,
        );
        final Either<CategoryFailure, List<Subcategory>> result =
        await _categoryFacade.getsubategories(e.category);

        List<Subcategory> subcategories = [];
        result.fold((l) => null, (r) => subcategories = r);

        yield state.copyWith(
          loading: false,
          subcategories: subcategories,
        );
      },
    );
  }
}
