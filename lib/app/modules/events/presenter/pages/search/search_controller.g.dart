// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $SearchController = BindInject(
  (i) => SearchController(i<EventsStore>()),
  isSingleton: true,
  isLazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SearchController on _SearchControllerBase, Store {
  Computed<bool>? _$isSearchComputed;

  @override
  bool get isSearch =>
      (_$isSearchComputed ??= Computed<bool>(() => super.isSearch,
              name: '_SearchControllerBase.isSearch'))
          .value;
  Computed<List<EventModel>>? _$getEventsComputed;

  @override
  List<EventModel> get getEvents =>
      (_$getEventsComputed ??= Computed<List<EventModel>>(() => super.getEvents,
              name: '_SearchControllerBase.getEvents'))
          .value;

  final _$_isSearchAtom = Atom(name: '_SearchControllerBase._isSearch');

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

  final _$searchAtom = Atom(name: '_SearchControllerBase.search');

  @override
  String get search {
    _$searchAtom.reportRead();
    return super.search;
  }

  @override
  set search(String value) {
    _$searchAtom.reportWrite(value, super.search, () {
      super.search = value;
    });
  }

  final _$_SearchControllerBaseActionController =
      ActionController(name: '_SearchControllerBase');

  @override
  void searchEvent(String text) {
    final _$actionInfo = _$_SearchControllerBaseActionController.startAction(
        name: '_SearchControllerBase.searchEvent');
    try {
      return super.searchEvent(text);
    } finally {
      _$_SearchControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
search: ${search},
isSearch: ${isSearch},
getEvents: ${getEvents}
    ''';
  }
}
