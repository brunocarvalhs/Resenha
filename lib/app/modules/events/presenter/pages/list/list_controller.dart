import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:mobx/mobx.dart';
import 'package:resenha/app/modules/events/domain/usecases/get_events.dart';
import 'package:resenha/app/modules/events/infra/models/event_model.dart';
import 'package:resenha/app/modules/events/presenter/stores/events_store.dart';
import 'package:resenha/app/modules/login/presenter/stores/auth_store.dart';

part 'list_controller.g.dart';

@Injectable()
class ListController = _ListControllerBase with _$ListController;

abstract class _ListControllerBase with Store {
  final AuthStore user;
  final EventsStore events;
  final GetEvents getEvents;

  _ListControllerBase(this.user, this.events, this.getEvents) {
    request();
  }

  PageController pageController = PageController(
    initialPage: 0,
    viewportFraction: 0.8,
    keepPage: true,
  );

  TextEditingController textEditingController = TextEditingController();

  @observable
  ObservableList<EventModel> _promotions = ObservableList<EventModel>.of([]);

  @computed
  int get countPromotions => _promotions.length;

  @computed
  bool get isPromotions => _promotions.isNotEmpty;

  @computed
  List<EventModel> get getPromotions => _promotions.toList();

  Future<void> request() async {
    var result = await getEvents();
    result.fold((failure) {}, (list) {
      events.addAll(list as Iterable<EventModel>);
    });
  }

  // void automaticScrollPromotions() {
  //   Timer.periodic(const Duration(seconds: 5), (Timer timer) {
  //     if (_currentPage < _promotions.length) {
  //       _currentPage++;
  //     } else {
  //       _currentPage = 0;
  //     }

  //     pageController.animateToPage(
  //       _currentPage,
  //       duration: const Duration(milliseconds: 350),
  //       curve: Curves.easeIn,
  //     );
  //   });
  // }

  bool scrollController(ScrollNotification scroll) {
    if (scroll is ScrollEndNotification) request();
    return true;
  }

  void redirectSearch() => Modular.to.pushNamed("/events/search");

  void redirectRegister() => Modular.to.pushNamed("/events/register");

  void redirectRead(String id) => Modular.to.pushNamed("/events/read/$id");
}
