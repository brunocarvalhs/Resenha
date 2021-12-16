// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meeting_point_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $MeetingPointController = BindInject(
  (i) => MeetingPointController(
      i<RegisterEventStore>(), i<Location>(), i<FindPlace>()),
  isSingleton: true,
  isLazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MeetingPointController on _MeetingPointControllerBase, Store {
  Computed<String?>? _$getSearchComputed;

  @override
  String? get getSearch =>
      (_$getSearchComputed ??= Computed<String?>(() => super.getSearch,
              name: '_MeetingPointControllerBase.getSearch'))
          .value;

  final _$positionAtom = Atom(name: '_MeetingPointControllerBase.position');

  @override
  LatLng get position {
    _$positionAtom.reportRead();
    return super.position;
  }

  @override
  set position(LatLng value) {
    _$positionAtom.reportWrite(value, super.position, () {
      super.position = value;
    });
  }

  final _$pointsAtom = Atom(name: '_MeetingPointControllerBase.points');

  @override
  ObservableMap<MarkerId, Marker> get points {
    _$pointsAtom.reportRead();
    return super.points;
  }

  @override
  set points(ObservableMap<MarkerId, Marker> value) {
    _$pointsAtom.reportWrite(value, super.points, () {
      super.points = value;
    });
  }

  final _$searchAtom = Atom(name: '_MeetingPointControllerBase.search');

  @override
  String? get search {
    _$searchAtom.reportRead();
    return super.search;
  }

  @override
  set search(String? value) {
    _$searchAtom.reportWrite(value, super.search, () {
      super.search = value;
    });
  }

  final _$_MeetingPointControllerBaseActionController =
      ActionController(name: '_MeetingPointControllerBase');

  @override
  void setPosition(LatLng value) {
    final _$actionInfo = _$_MeetingPointControllerBaseActionController
        .startAction(name: '_MeetingPointControllerBase.setPosition');
    try {
      return super.setPosition(value);
    } finally {
      _$_MeetingPointControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPoint(MarkerId key, Marker value) {
    final _$actionInfo = _$_MeetingPointControllerBaseActionController
        .startAction(name: '_MeetingPointControllerBase.setPoint');
    try {
      return super.setPoint(key, value);
    } finally {
      _$_MeetingPointControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void searchPoint(String text) {
    final _$actionInfo = _$_MeetingPointControllerBaseActionController
        .startAction(name: '_MeetingPointControllerBase.searchPoint');
    try {
      return super.searchPoint(text);
    } finally {
      _$_MeetingPointControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
position: ${position},
points: ${points},
search: ${search},
getSearch: ${getSearch}
    ''';
  }
}
