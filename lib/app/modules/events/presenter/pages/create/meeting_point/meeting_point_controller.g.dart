// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meeting_point_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $MeetingPointController = BindInject(
  (i) => MeetingPointController(i<RegisterController>()),
  isSingleton: true,
  isLazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MeetingPointController on _MeetingPointControllerBase, Store {
  final _$centerAtom = Atom(name: '_MeetingPointControllerBase.center');

  @override
  LatLng get center {
    _$centerAtom.reportRead();
    return super.center;
  }

  @override
  set center(LatLng value) {
    _$centerAtom.reportWrite(value, super.center, () {
      super.center = value;
    });
  }

  @override
  String toString() {
    return '''
center: ${center}
    ''';
  }
}
