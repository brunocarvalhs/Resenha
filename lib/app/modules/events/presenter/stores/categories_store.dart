import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:resenha/app/modules/events/infra/models/category_model.dart';

part 'categories_store.g.dart';

@Injectable()
class CategoriesStore = _CategoriesStoreBase with _$CategoriesStore;

abstract class _CategoriesStoreBase with Store {
  @observable
  ObservableList<CategoryModel> _categories = ObservableList<CategoryModel>.of([]);

  @computed
  List<CategoryModel> get listCategories => _categories.toList();
}
