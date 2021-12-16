import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:resenha/app/modules/events/domain/entities/logged_category_info.dart';
import 'package:resenha/app/modules/events/domain/errors/errors.dart';
import 'package:dartz/dartz.dart';
import 'package:resenha/app/modules/events/domain/repositories/categories_repository.dart';
import 'package:resenha/app/modules/events/infra/datasource/database_datasource.dart';
import 'package:resenha/app/modules/events/infra/models/category_model.dart';

class CategoriesRepositoryImpl extends CategoriesRepository {
  final DatabaseDataSource datasource;
  final String collection = "categories";

  CategoriesRepositoryImpl(this.datasource);

  @override
  Future<Either<Failure, Iterable<LoggedCategoryInfo>>> all() async {
    try {
      var list = await datasource.selectAll(collection) as QuerySnapshot<Map<String, dynamic>>;
      var categories = list.docs.map((element) => CategoryModel.fromMap(element.data()));
      return Right(categories);
    } catch (e) {
      return Left(ErrorCreate(message: "Error ao tentar criar evento"));
    }
  }
}
