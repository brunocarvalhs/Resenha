// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'read_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $ReadController = BindInject(
  (i) => ReadController(i<ReadEvent>(), i<AuthStore>()),
  isSingleton: true,
  isLazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ReadController on _ReadControllerBase, Store {
  final _$eventModelAtom = Atom(name: '_ReadControllerBase.eventModel');

  @override
  EventModel? get eventModel {
    _$eventModelAtom.reportRead();
    return super.eventModel;
  }

  @override
  set eventModel(EventModel? value) {
    _$eventModelAtom.reportWrite(value, super.eventModel, () {
      super.eventModel = value;
    });
  }

  final _$_ReadControllerBaseActionController =
      ActionController(name: '_ReadControllerBase');

  @override
  void setEvent(EventModel event) {
    final _$actionInfo = _$_ReadControllerBaseActionController.startAction(
        name: '_ReadControllerBase.setEvent');
    try {
      return super.setEvent(event);
    } finally {
      _$_ReadControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
eventModel: ${eventModel}
    ''';
  }
}
