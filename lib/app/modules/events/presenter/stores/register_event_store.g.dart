// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_event_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RegisterEventStore on _RegisterEventStoreBase, Store {
  Computed<CategoryModel?>? _$getCategoryComputed;

  @override
  CategoryModel? get getCategory => (_$getCategoryComputed ??=
          Computed<CategoryModel?>(() => super.getCategory,
              name: '_RegisterEventStoreBase.getCategory'))
      .value;
  Computed<String>? _$getNameComputed;

  @override
  String get getName =>
      (_$getNameComputed ??= Computed<String>(() => super.getName,
              name: '_RegisterEventStoreBase.getName'))
          .value;
  Computed<String>? _$getDiscribleComputed;

  @override
  String get getDiscrible =>
      (_$getDiscribleComputed ??= Computed<String>(() => super.getDiscrible,
              name: '_RegisterEventStoreBase.getDiscrible'))
          .value;
  Computed<DateTime>? _$getDateComputed;

  @override
  DateTime get getDate =>
      (_$getDateComputed ??= Computed<DateTime>(() => super.getDate,
              name: '_RegisterEventStoreBase.getDate'))
          .value;
  Computed<bool>? _$isPrivateComputed;

  @override
  bool get isPrivate =>
      (_$isPrivateComputed ??= Computed<bool>(() => super.isPrivate,
              name: '_RegisterEventStoreBase.isPrivate'))
          .value;
  Computed<bool>? _$isInviteComputed;

  @override
  bool get isInvite =>
      (_$isInviteComputed ??= Computed<bool>(() => super.isInvite,
              name: '_RegisterEventStoreBase.isInvite'))
          .value;
  Computed<double>? _$getLatitudeComputed;

  @override
  double get getLatitude =>
      (_$getLatitudeComputed ??= Computed<double>(() => super.getLatitude,
              name: '_RegisterEventStoreBase.getLatitude'))
          .value;
  Computed<double>? _$getLongitudeComputed;

  @override
  double get getLongitude =>
      (_$getLongitudeComputed ??= Computed<double>(() => super.getLongitude,
              name: '_RegisterEventStoreBase.getLongitude'))
          .value;

  final _$_categoryAtom = Atom(name: '_RegisterEventStoreBase._category');

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

  final _$_nameAtom = Atom(name: '_RegisterEventStoreBase._name');

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

  final _$_discribleAtom = Atom(name: '_RegisterEventStoreBase._discrible');

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

  final _$_dateAtom = Atom(name: '_RegisterEventStoreBase._date');

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

  final _$_timeAtom = Atom(name: '_RegisterEventStoreBase._time');

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

  final _$_isPrivateAtom = Atom(name: '_RegisterEventStoreBase._isPrivate');

  @override
  bool get _isPrivate {
    _$_isPrivateAtom.reportRead();
    return super._isPrivate;
  }

  @override
  set _isPrivate(bool value) {
    _$_isPrivateAtom.reportWrite(value, super._isPrivate, () {
      super._isPrivate = value;
    });
  }

  final _$_isInviteAtom = Atom(name: '_RegisterEventStoreBase._isInvite');

  @override
  bool get _isInvite {
    _$_isInviteAtom.reportRead();
    return super._isInvite;
  }

  @override
  set _isInvite(bool value) {
    _$_isInviteAtom.reportWrite(value, super._isInvite, () {
      super._isInvite = value;
    });
  }

  final _$_latitudeAtom = Atom(name: '_RegisterEventStoreBase._latitude');

  @override
  double get _latitude {
    _$_latitudeAtom.reportRead();
    return super._latitude;
  }

  @override
  set _latitude(double value) {
    _$_latitudeAtom.reportWrite(value, super._latitude, () {
      super._latitude = value;
    });
  }

  final _$_longitudeAtom = Atom(name: '_RegisterEventStoreBase._longitude');

  @override
  double get _longitude {
    _$_longitudeAtom.reportRead();
    return super._longitude;
  }

  @override
  set _longitude(double value) {
    _$_longitudeAtom.reportWrite(value, super._longitude, () {
      super._longitude = value;
    });
  }

  final _$_RegisterEventStoreBaseActionController =
      ActionController(name: '_RegisterEventStoreBase');

  @override
  void setCategory(CategoryModel? value) {
    final _$actionInfo = _$_RegisterEventStoreBaseActionController.startAction(
        name: '_RegisterEventStoreBase.setCategory');
    try {
      return super.setCategory(value);
    } finally {
      _$_RegisterEventStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setName(String? value) {
    final _$actionInfo = _$_RegisterEventStoreBaseActionController.startAction(
        name: '_RegisterEventStoreBase.setName');
    try {
      return super.setName(value);
    } finally {
      _$_RegisterEventStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDiscrible(String? value) {
    final _$actionInfo = _$_RegisterEventStoreBaseActionController.startAction(
        name: '_RegisterEventStoreBase.setDiscrible');
    try {
      return super.setDiscrible(value);
    } finally {
      _$_RegisterEventStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDate(DateTime? date) {
    final _$actionInfo = _$_RegisterEventStoreBaseActionController.startAction(
        name: '_RegisterEventStoreBase.setDate');
    try {
      return super.setDate(date);
    } finally {
      _$_RegisterEventStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTime(TimeOfDay? time) {
    final _$actionInfo = _$_RegisterEventStoreBaseActionController.startAction(
        name: '_RegisterEventStoreBase.setTime');
    try {
      return super.setTime(time);
    } finally {
      _$_RegisterEventStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPrivateEvent(bool value) {
    final _$actionInfo = _$_RegisterEventStoreBaseActionController.startAction(
        name: '_RegisterEventStoreBase.setPrivateEvent');
    try {
      return super.setPrivateEvent(value);
    } finally {
      _$_RegisterEventStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setInviteEvent(bool value) {
    final _$actionInfo = _$_RegisterEventStoreBaseActionController.startAction(
        name: '_RegisterEventStoreBase.setInviteEvent');
    try {
      return super.setInviteEvent(value);
    } finally {
      _$_RegisterEventStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPoint(double latitude, double longitude) {
    final _$actionInfo = _$_RegisterEventStoreBaseActionController.startAction(
        name: '_RegisterEventStoreBase.setPoint');
    try {
      return super.setPoint(latitude, longitude);
    } finally {
      _$_RegisterEventStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
getCategory: ${getCategory},
getName: ${getName},
getDiscrible: ${getDiscrible},
getDate: ${getDate},
isPrivate: ${isPrivate},
isInvite: ${isInvite},
getLatitude: ${getLatitude},
getLongitude: ${getLongitude}
    ''';
  }
}
