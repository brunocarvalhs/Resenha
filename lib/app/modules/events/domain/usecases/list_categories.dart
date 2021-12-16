import 'package:dartz/dartz.dart';
import 'package:resenha/app/modules/events/domain/entities/logged_category_info.dart';
import 'package:resenha/app/modules/events/domain/repositories/categories_repository.dart';

import '../../domain/errors/errors.dart';

abstract class ListCategories {
  Future<Either<Failure, Iterable<LoggedCategoryInfo>>> call();
}

class ListCategoriesImpl extends ListCategories {
  final CategoriesRepository repository;

  ListCategoriesImpl(this.repository);

  @override
  Future<Either<Failure, Iterable<LoggedCategoryInfo>>> call() async {
    return await repository.all();
  }
}
