import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:mobx/mobx.dart';
import 'package:resenha/app/modules/events/infra/models/event_model.dart';
import 'package:resenha/app/modules/login/presenter/stores/auth_store.dart';

part 'list_controller.g.dart';

@Injectable()
class ListController = _ListControllerBase with _$ListController;

abstract class _ListControllerBase with Store {
  final AuthStore user;
  _ListControllerBase(this.user);

  int _currentPage = 0;

  PageController pageController = PageController(
    initialPage: 0,
    viewportFraction: 0.8,
    keepPage: true,
  );

  TextEditingController textEditingController = new TextEditingController();

  @observable
  ObservableList<EventModel> _events = ObservableList<EventModel>.of([
    EventModel(
      "1",
      "Resenha do Thiagão",
      "Partiu praia com muita bebi...",
      "Luau",
      DateTime(2021, 6, 18, 21, 00),
      "https://media-cdn.tripadvisor.com/media/photo-s/0d/30/40/03/lual-com-jantar-promovido.jpg",
    ),
    EventModel(
      "2",
      "Yeah, Boiada",
      "Eae galeri!! Partiu beber, ca...",
      "Barzinho",
      DateTime(2021, 6, 23, 19, 00),
      "https://vejasp.abril.com.br/wp-content/uploads/2019/08/ambiente-com-pessoas-dentro-fora-e-fachada_03.jpg.jpg",
    ),
    EventModel(
      "3",
      "Rumo ao Show",
      "Vamos galera!! curti essa Pa...",
      "Show",
      DateTime(2021, 6, 20, 01, 00),
      "https://jornalmaisbraganca.com.br/wp-content/uploads/2019/12/turma_pagode_254.png",
    ),
    EventModel(
      "4",
      "Bora queimar tudo",
      "bora ficar com aquela marq...",
      "Piscininha",
      DateTime(2021, 6, 20, 14, 20),
      "http://s2.glbimg.com/72OzWv4EbU1g6SRZwzRiTkrsCBw=/s.glbimg.com/et/gs/f/original/2015/07/22/galera-piscina.jpg",
    ),
    EventModel(
      "5",
      "Festa do Bruninho",
      "Festou seus 8 anos, levem...",
      "Festa",
      DateTime(2021, 6, 10, 19, 00),
      "https://fotocasual.com/2017/01/img_2631.jpg",
    ),
  ]);

  @observable
  ObservableList<EventModel> _eventsPromotions = ObservableList<EventModel>.of([
    EventModel(
      "1",
      "Resenha do Thiagão",
      "Partiu praia com muita bebi...",
      "Luau",
      DateTime(2021, 6, 18, 21, 00),
      "https://media-cdn.tripadvisor.com/media/photo-s/0d/30/40/03/lual-com-jantar-promovido.jpg",
    ),
    EventModel(
      "2",
      "Yeah, Boiada",
      "Eae galeri!! Partiu beber, ca...",
      "Barzinho",
      DateTime(2021, 6, 23, 19, 00),
      "https://vejasp.abril.com.br/wp-content/uploads/2019/08/ambiente-com-pessoas-dentro-fora-e-fachada_03.jpg.jpg",
    ),
    EventModel(
      "3",
      "Rumo ao Show",
      "Vamos galera!! curti essa Pa...",
      "Show",
      DateTime(2021, 6, 20, 01, 00),
      "https://jornalmaisbraganca.com.br/wp-content/uploads/2019/12/turma_pagode_254.png",
    ),
    EventModel(
      "4",
      "Bora queimar tudo",
      "bora ficar com aquela marq...",
      "Piscininha",
      DateTime(2021, 6, 20, 14, 20),
      "http://s2.glbimg.com/72OzWv4EbU1g6SRZwzRiTkrsCBw=/s.glbimg.com/et/gs/f/original/2015/07/22/galera-piscina.jpg",
    ),
    EventModel(
      "5",
      "Festa do Bruninho",
      "Festou seus 8 anos, levem...",
      "Festa",
      DateTime(2021, 6, 10, 19, 00),
      "https://fotocasual.com/2017/01/img_2631.jpg",
    ),
  ]);

  @observable
  bool _isSearch = false;

  @computed
  bool get isEvents => _events.length > 0;

  @computed
  bool get isSearch => _isSearch;

  @computed
  int get countEvents => _events.length;

  @computed
  int get countEventsPromotions => _eventsPromotions.length;

  @computed
  List<EventModel> get getEvents => _events.toList();

  @computed
  List<EventModel> get getEventsPromotions => _eventsPromotions.toList();

  @action
  void add(EventModel value) => _events.add(value);

  @action
  void setIsSearch() => _isSearch = !_isSearch;

  @action
  void searchEvent(String search) => _events.forEach((event) {});

  void automaticScrollPromotions() {
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < _eventsPromotions.length) {
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

  void pushEvent(String id) => Modular.to.pushNamed("/events/read/${id}");

  void redirectRegister() => Modular.to.pushNamed("/events/register");
}
