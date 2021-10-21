// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$EventsStore on _EventsStoreBase, Store {
  Computed<bool>? _$isEventsComputed;

  @override
  bool get isEvents =>
      (_$isEventsComputed ??= Computed<bool>(() => super.isEvents,
              name: '_EventsStoreBase.isEvents'))
          .value;
  Computed<int>? _$countEventsComputed;

  @override
  int get countEvents =>
      (_$countEventsComputed ??= Computed<int>(() => super.countEvents,
              name: '_EventsStoreBase.countEvents'))
          .value;
  Computed<List<EventModel>>? _$getEventsComputed;

  @override
  List<EventModel> get getEvents =>
      (_$getEventsComputed ??= Computed<List<EventModel>>(() => super.getEvents,
              name: '_EventsStoreBase.getEvents'))
          .value;

  final _$_eventsAtom = Atom(name: '_EventsStoreBase._events');

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

  final _$_EventsStoreBaseActionController =
      ActionController(name: '_EventsStoreBase');

  @override
  void add(EventModel value) {
    final _$actionInfo = _$_EventsStoreBaseActionController.startAction(
        name: '_EventsStoreBase.add');
    try {
      return super.add(value);
    } finally {
      _$_EventsStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void searchEvent(String search) {
    final _$actionInfo = _$_EventsStoreBaseActionController.startAction(
        name: '_EventsStoreBase.searchEvent');
    try {
      return super.searchEvent(search);
    } finally {
      _$_EventsStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTitle(EventModel base, String? title) {
    final _$actionInfo = _$_EventsStoreBaseActionController.startAction(
        name: '_EventsStoreBase.setTitle');
    try {
      return super.setTitle(base, title);
    } finally {
      _$_EventsStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDescription(EventModel base, String? description) {
    final _$actionInfo = _$_EventsStoreBaseActionController.startAction(
        name: '_EventsStoreBase.setDescription');
    try {
      return super.setDescription(base, description);
    } finally {
      _$_EventsStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCategory(EventModel base, String? category) {
    final _$actionInfo = _$_EventsStoreBaseActionController.startAction(
        name: '_EventsStoreBase.setCategory');
    try {
      return super.setCategory(base, category);
    } finally {
      _$_EventsStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDate(EventModel base, DateTime? date) {
    final _$actionInfo = _$_EventsStoreBaseActionController.startAction(
        name: '_EventsStoreBase.setDate');
    try {
      return super.setDate(base, date);
    } finally {
      _$_EventsStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setImage(EventModel base, String? image) {
    final _$actionInfo = _$_EventsStoreBaseActionController.startAction(
        name: '_EventsStoreBase.setImage');
    try {
      return super.setImage(base, image);
    } finally {
      _$_EventsStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isEvents: ${isEvents},
countEvents: ${countEvents},
getEvents: ${getEvents}
    ''';
  }
}
