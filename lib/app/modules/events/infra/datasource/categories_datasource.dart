import 'package:contacts_service/contacts_service.dart';
import 'package:resenha/app/modules/events/domain/entities/logged_category_info.dart';

abstract class CategoriesDataSource {
  Future<List<LoggedCategoryInfo>> selectAll();
}
