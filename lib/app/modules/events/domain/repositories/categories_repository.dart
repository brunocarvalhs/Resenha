import 'package:dartz/dartz.dart';

import '../../domain/entities/logged_category_info.dart';
import '../../domain/errors/errors.dart';

abstract class CategoriesRepository {
  Future<Either<Failure, LoggedCategoryInfo>> select(String id);
  Future<Either<Failure, List<LoggedCategoryInfo>>> selectAll();
  Future<Either<Failure, LoggedCategoryInfo>> create(LoggedCategoryInfo event);
}
