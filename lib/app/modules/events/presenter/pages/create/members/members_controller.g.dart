// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'members_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $MembersController = BindInject(
  (i) => MembersController(i<RegisterEventStore>(), i<ListContacts>()),
  isSingleton: true,
  isLazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MembersController on _MembersControllerBase, Store {
  Computed<List<Contact>>? _$getContactsComputed;

  @override
  List<Contact> get getContacts => (_$getContactsComputed ??=
          Computed<List<Contact>>(() => super.getContacts,
              name: '_MembersControllerBase.getContacts'))
      .value;
  Computed<int>? _$countContactsComputed;

  @override
  int get countContacts =>
      (_$countContactsComputed ??= Computed<int>(() => super.countContacts,
              name: '_MembersControllerBase.countContacts'))
          .value;

  final _$_contactsAtom = Atom(name: '_MembersControllerBase._contacts');

  @override
  ObservableList<Contact> get _contacts {
    _$_contactsAtom.reportRead();
    return super._contacts;
  }

  @override
  set _contacts(ObservableList<Contact> value) {
    _$_contactsAtom.reportWrite(value, super._contacts, () {
      super._contacts = value;
    });
  }

  final _$_MembersControllerBaseActionController =
      ActionController(name: '_MembersControllerBase');

  @override
  void setAll(List<Contact> iterable) {
    final _$actionInfo = _$_MembersControllerBaseActionController.startAction(
        name: '_MembersControllerBase.setAll');
    try {
      return super.setAll(iterable);
    } finally {
      _$_MembersControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
getContacts: ${getContacts},
countContacts: ${countContacts}
    ''';
  }
}
