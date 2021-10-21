// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $ListController = BindInject(
  (i) => ListController(i<AuthStore>(), i<EventsStore>()),
  isSingleton: true,
  isLazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ListController on _ListControllerBase, Store {
  Computed<int>? _$countEventsPromotionsComputed;

  @override
  int get countEventsPromotions => (_$countEventsPromotionsComputed ??=
          Computed<int>(() => super.countEventsPromotions,
              name: '_ListControllerBase.countEventsPromotions'))
      .value;
  Computed<List<EventModel>>? _$getEventsPromotionsComputed;

  @override
  List<EventModel> get getEventsPromotions => (_$getEventsPromotionsComputed ??=
          Computed<List<EventModel>>(() => super.getEventsPromotions,
              name: '_ListControllerBase.getEventsPromotions'))
      .value;

  final _$_promotionsAtom = Atom(name: '_ListControllerBase._promotions');

  @override
  ObservableList<EventModel> get _promotions {
    _$_promotionsAtom.reportRead();
    return super._promotions;
  }

  @override
  set _promotions(ObservableList<EventModel> value) {
    _$_promotionsAtom.reportWrite(value, super._promotions, () {
      super._promotions = value;
    });
  }

  @override
  String toString() {
    return '''
countEventsPromotions: ${countEventsPromotions},
getEventsPromotions: ${getEventsPromotions}
    ''';
  }
}
