// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $ListController = BindInject(
  (i) => ListController(i<AuthStore>()),
  isSingleton: true,
  isLazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ListController on _ListControllerBase, Store {
  Computed<bool>? _$isEventsComputed;

  @override
  bool get isEvents =>
      (_$isEventsComputed ??= Computed<bool>(() => super.isEvents,
              name: '_ListControllerBase.isEvents'))
          .value;
  Computed<bool>? _$isSearchComputed;

  @override
  bool get isSearch =>
      (_$isSearchComputed ??= Computed<bool>(() => super.isSearch,
              name: '_ListControllerBase.isSearch'))
          .value;
  Computed<int>? _$countEventsComputed;

  @override
  int get countEvents =>
      (_$countEventsComputed ??= Computed<int>(() => super.countEvents,
              name: '_ListControllerBase.countEvents'))
          .value;
  Computed<int>? _$countEventsPromotionsComputed;

  @override
  int get countEventsPromotions => (_$countEventsPromotionsComputed ??=
          Computed<int>(() => super.countEventsPromotions,
              name: '_ListControllerBase.countEventsPromotions'))
      .value;
  Computed<List<EventModel>>? _$getEventsComputed;

  @override
  List<EventModel> get getEvents =>
      (_$getEventsComputed ??= Computed<List<EventModel>>(() => super.getEvents,
              name: '_ListControllerBase.getEvents'))
          .value;
  Computed<List<EventModel>>? _$getEventsPromotionsComputed;

  @override
  List<EventModel> get getEventsPromotions => (_$getEventsPromotionsComputed ??=
          Computed<List<EventModel>>(() => super.getEventsPromotions,
              name: '_ListControllerBase.getEventsPromotions'))
      .value;

  final _$_eventsAtom = Atom(name: '_ListControllerBase._events');

  @override
  ObservableList<EventModel> get _events {
    _$_eventsAtom.reportRead();
    return super._events;
  }

  @override
  set _events(ObservableList<EventModel> value) {
    _$_eventsAtom.reportWrite(value, super._events, () {
      super._events = value;
    });
  }

  final _$_eventsPromotionsAtom =
      Atom(name: '_ListControllerBase._eventsPromotions');

  @override
  ObservableList<EventModel> get _eventsPromotions {
    _$_eventsPromotionsAtom.reportRead();
    return super._eventsPromotions;
  }

  @override
  set _eventsPromotions(ObservableList<EventModel> value) {
    _$_eventsPromotionsAtom.reportWrite(value, super._eventsPromotions, () {
      super._eventsPromotions = value;
    });
  }

  final _$_isSearchAtom = Atom(name: '_ListControllerBase._isSearch');

  @override
  bool get _isSearch {
    _$_isSearchAtom.reportRead();
    return super._isSearch;
  }

  @override
  set _isSearch(bool value) {
    _$_isSearchAtom.reportWrite(value, super._isSearch, () {
      super._isSearch = value;
    });
  }

  final _$_ListControllerBaseActionController =
      ActionController(name: '_ListControllerBase');

  @override
  void add(EventModel value) {
    final _$actionInfo = _$_ListControllerBaseActionController.startAction(
        name: '_ListControllerBase.add');
    try {
      return super.add(value);
    } finally {
      _$_ListControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsSearch() {
    final _$actionInfo = _$_ListControllerBaseActionController.startAction(
        name: '_ListControllerBase.setIsSearch');
    try {
      return super.setIsSearch();
    } finally {
      _$_ListControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void searchEvent(String search) {
    final _$actionInfo = _$_ListControllerBaseActionController.startAction(
        name: '_ListControllerBase.searchEvent');
    try {
      return super.searchEvent(search);
    } finally {
      _$_ListControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isEvents: ${isEvents},
isSearch: ${isSearch},
countEvents: ${countEvents},
countEventsPromotions: ${countEventsPromotions},
getEvents: ${getEvents},
getEventsPromotions: ${getEventsPromotions}
    ''';
  }
}
