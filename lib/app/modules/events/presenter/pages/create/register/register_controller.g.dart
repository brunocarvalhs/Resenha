// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $RegisterController = BindInject(
  (i) => RegisterController(
      i<CategoriesStore>(), i<EventsStore>(), i<RegistersEvent>(), i<Uuid>()),
  isSingleton: true,
  isLazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RegisterController on _RegisterControllerBase, Store {
  Computed<CategoryModel?>? _$getCategoryComputed;

  @override
  CategoryModel? get getCategory => (_$getCategoryComputed ??=
          Computed<CategoryModel?>(() => super.getCategory,
              name: '_RegisterControllerBase.getCategory'))
      .value;
  Computed<String>? _$getNameComputed;

  @override
  String get getName =>
      (_$getNameComputed ??= Computed<String>(() => super.getName,
              name: '_RegisterControllerBase.getName'))
          .value;
  Computed<String>? _$getDiscribleComputed;

  @override
  String get getDiscrible =>
      (_$getDiscribleComputed ??= Computed<String>(() => super.getDiscrible,
              name: '_RegisterControllerBase.getDiscrible'))
          .value;
  Computed<int>? _$countCategoryComputed;

  @override
  int get countCategory =>
      (_$countCategoryComputed ??= Computed<int>(() => super.countCategory,
              name: '_RegisterControllerBase.countCategory'))
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
  Computed<DateTime>? _$getDateComputed;

  @override
  DateTime get getDate =>
      (_$getDateComputed ??= Computed<DateTime>(() => super.getDate,
              name: '_RegisterControllerBase.getDate'))
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

  final _$_categoryAtom = Atom(name: '_RegisterControllerBase._category');

  @override
  CategoryModel? get _category {
    _$_categoryAtom.reportRead();
    return super._category;
  }

  @override
  set _category(CategoryModel? value) {
    _$_categoryAtom.reportWrite(value, super._category, () {
      super._category = value;
    });
  }

  final _$_nameAtom = Atom(name: '_RegisterControllerBase._name');

  @override
  String? get _name {
    _$_nameAtom.reportRead();
    return super._name;
  }

  @override
  set _name(String? value) {
    _$_nameAtom.reportWrite(value, super._name, () {
      super._name = value;
    });
  }

  final _$_discribleAtom = Atom(name: '_RegisterControllerBase._discrible');

  @override
  String? get _discrible {
    _$_discribleAtom.reportRead();
    return super._discrible;
  }

  @override
  set _discrible(String? value) {
    _$_discribleAtom.reportWrite(value, super._discrible, () {
      super._discrible = value;
    });
  }

  final _$_dateAtom = Atom(name: '_RegisterControllerBase._date');

  @override
  DateTime get _date {
    _$_dateAtom.reportRead();
    return super._date;
  }

  @override
  set _date(DateTime value) {
    _$_dateAtom.reportWrite(value, super._date, () {
      super._date = value;
    });
  }

  final _$_timeAtom = Atom(name: '_RegisterControllerBase._time');

  @override
  TimeOfDay get _time {
    _$_timeAtom.reportRead();
    return super._time;
  }

  @override
  set _time(TimeOfDay value) {
    _$_timeAtom.reportWrite(value, super._time, () {
      super._time = value;
    });
  }

  final _$isPrivateAtom = Atom(name: '_RegisterControllerBase.isPrivate');

  @override
  bool get isPrivate {
    _$isPrivateAtom.reportRead();
    return super.isPrivate;
  }

  @override
  set isPrivate(bool value) {
    _$isPrivateAtom.reportWrite(value, super.isPrivate, () {
      super.isPrivate = value;
    });
  }

  final _$isInviteAtom = Atom(name: '_RegisterControllerBase.isInvite');

  @override
  bool get isInvite {
    _$isInviteAtom.reportRead();
    return super.isInvite;
  }

  @override
  set isInvite(bool value) {
    _$isInviteAtom.reportWrite(value, super.isInvite, () {
      super.isInvite = value;
    });
  }

  final _$_RegisterControllerBaseActionController =
      ActionController(name: '_RegisterControllerBase');

  @override
  void setCategory(int index) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.setCategory');
    try {
      return super.setCategory(index);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setName(String? value) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.setName');
    try {
      return super.setName(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDiscrible(String? value) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.setDiscrible');
    try {
      return super.setDiscrible(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  CategoryModel getCategoryIndex(int index) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.getCategoryIndex');
    try {
      return super.getCategoryIndex(index);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  bool isSelected(int index) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.isSelected');
    try {
      return super.isSelected(index);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDate(DateTime? date) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.setDate');
    try {
      return super.setDate(date);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTime(TimeOfDay? time) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.setTime');
    try {
      return super.setTime(time);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPrivateEvent(bool value) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.setPrivateEvent');
    try {
      return super.setPrivateEvent(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setInviteEvent(bool value) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.setInviteEvent');
    try {
      return super.setInviteEvent(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isPrivate: ${isPrivate},
isInvite: ${isInvite},
getCategory: ${getCategory},
getName: ${getName},
getDiscrible: ${getDiscrible},
countCategory: ${countCategory},
getDay: ${getDay},
getMonth: ${getMonth},
getDate: ${getDate},
getHour: ${getHour},
getMinute: ${getMinute}
    ''';
  }
}
