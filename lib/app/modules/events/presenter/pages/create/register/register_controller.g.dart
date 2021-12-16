// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $RegisterController = BindInject(
  (i) => RegisterController(
      i<ListCategories>(), i<RegisterEventStore>(), i<SelectImage>()),
  isSingleton: true,
  isLazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RegisterController on _RegisterControllerBase, Store {
  Computed<List<CategoryModel>>? _$listComputed;

  @override
  List<CategoryModel> get list =>
      (_$listComputed ??= Computed<List<CategoryModel>>(() => super.list,
              name: '_RegisterControllerBase.list'))
          .value;
  Computed<int>? _$countCategoriesComputed;

  @override
  int get countCategories =>
      (_$countCategoriesComputed ??= Computed<int>(() => super.countCategories,
              name: '_RegisterControllerBase.countCategories'))
          .value;
  Computed<String>? _$getDayComputed;

  @override
  String get getDay =>
      (_$getDayComputed ??= Computed<String>(() => super.getDay,
              name: '_RegisterControllerBase.getDay'))
          .value;
  Computed<String>? _$getMonthComputed;

  @override
  String get getMonth =>
      (_$getMonthComputed ??= Computed<String>(() => super.getMonth,
              name: '_RegisterControllerBase.getMonth'))
          .value;
  Computed<String>? _$getHourComputed;

  @override
  String get getHour =>
      (_$getHourComputed ??= Computed<String>(() => super.getHour,
              name: '_RegisterControllerBase.getHour'))
          .value;
  Computed<String>? _$getMinuteComputed;

  @override
  String get getMinute =>
      (_$getMinuteComputed ??= Computed<String>(() => super.getMinute,
              name: '_RegisterControllerBase.getMinute'))
          .value;

  final _$_categoriesAtom = Atom(name: '_RegisterControllerBase._categories');

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
list: ${list},
countCategories: ${countCategories},
getDay: ${getDay},
getMonth: ${getMonth},
getHour: ${getHour},
getMinute: ${getMinute}
    ''';
  }
}
