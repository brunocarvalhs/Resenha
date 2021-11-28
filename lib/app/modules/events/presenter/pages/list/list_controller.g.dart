// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $ListController = BindInject(
  (i) => ListController(i<AuthStore>(), i<EventsStore>(), i<GetEvents>()),
  isSingleton: true,
  isLazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ListController on _ListControllerBase, Store {
  Computed<int>? _$countPromotionsComputed;

  @override
  int get countPromotions =>
      (_$countPromotionsComputed ??= Computed<int>(() => super.countPromotions,
              name: '_ListControllerBase.countPromotions'))
          .value;
  Computed<bool>? _$isPromotionsComputed;

  @override
  bool get isPromotions =>
      (_$isPromotionsComputed ??= Computed<bool>(() => super.isPromotions,
              name: '_ListControllerBase.isPromotions'))
          .value;
  Computed<List<EventModel>>? _$getPromotionsComputed;

  @override
  List<EventModel> get getPromotions => (_$getPromotionsComputed ??=
          Computed<List<EventModel>>(() => super.getPromotions,
              name: '_ListControllerBase.getPromotions'))
      .value;

  final _$_promotionsAtom = Atom(name: '_ListControllerBase._promotions');

  @override
  List<EventModel> get _promotions {
    _$_promotionsAtom.reportRead();
    return super._promotions;
  }

  @override
  set _promotions(List<EventModel> value) {
    _$_promotionsAtom.reportWrite(value, super._promotions, () {
      super._promotions = value;
    });
  }

  @override
  String toString() {
    return '''
countPromotions: ${countPromotions},
isPromotions: ${isPromotions},
getPromotions: ${getPromotions}
    ''';
  }
}
