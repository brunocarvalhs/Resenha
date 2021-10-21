import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:mobx/mobx.dart';
import 'package:resenha/app/modules/events/infra/models/event_model.dart';
import 'package:resenha/app/modules/events/presenter/stores/events_store.dart';
import 'package:resenha/app/modules/login/presenter/stores/auth_store.dart';

part 'list_controller.g.dart';

@Injectable()
class ListController = _ListControllerBase with _$ListController;

abstract class _ListControllerBase with Store {
  final AuthStore user;
  final EventsStore events;
  _ListControllerBase(this.user, this.events);

  int _currentPage = 0;

  PageController pageController = PageController(
    initialPage: 0,
    viewportFraction: 0.8,
    keepPage: true,
  );

  TextEditingController textEditingController = new TextEditingController();

  @observable
  ObservableList<EventModel> _promotions = ObservableList<EventModel>.of([]);

  @computed
  int get countEventsPromotions => _promotions.length;

  @computed
  List<EventModel> get getEventsPromotions => _promotions.toList();

  void automaticScrollPromotions() {
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < _promotions.length) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 350),
        curve: Curves.easeIn,
      );
    });
  }

  void redirectSearch() => Modular.to.pushNamed("/events/search");

  void redirectRegister() => Modular.to.pushNamed("/events/register");
}
