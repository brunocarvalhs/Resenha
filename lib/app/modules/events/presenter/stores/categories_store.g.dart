// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_store.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $CategoriesStore = BindInject(
  (i) => CategoriesStore(),
  isSingleton: true,
  isLazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CategoriesStore on _CategoriesStoreBase, Store {
  Computed<List<CategoryModel>>? _$listCategoriesComputed;

  @override
  List<CategoryModel> get listCategories => (_$listCategoriesComputed ??=
          Computed<List<CategoryModel>>(() => super.listCategories,
              name: '_CategoriesStoreBase.listCategories'))
      .value;

  final _$_categoriesAtom = Atom(name: '_CategoriesStoreBase._categories');

  @override
  ObservableList<CategoryModel> get _categories {
    _$_categoriesAtom.reportRead();
    return super._categories;
  }

  @override
  set _categories(ObservableList<CategoryModel> value) {
    _$_categoriesAtom.reportWrite(value, super._categories, () {
      super._categories = value;
    });
  }

  @override
  String toString() {
    return '''
listCategories: ${listCategories}
    ''';
  }
}
