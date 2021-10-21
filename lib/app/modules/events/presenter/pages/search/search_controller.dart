import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:mobx/mobx.dart';
import 'package:resenha/app/modules/events/infra/models/event_model.dart';
import 'package:resenha/app/modules/events/presenter/stores/events_store.dart';

part 'search_controller.g.dart';

@Injectable()
class SearchController = _SearchControllerBase with _$SearchController;

abstract class _SearchControllerBase with Store {
  final EventsStore events;

  _SearchControllerBase(this.events);

  TextEditingController textEditingController = new TextEditingController();

  @observable
  bool _isSearch = true;

  @observable
  String search = "";

  @computed
  bool get isSearch => _isSearch;

  @computed
  List<EventModel> get getEvents =>
      events.getEvents.where((event) => event.title.toLowerCase().contains(search.toLowerCase())).toList();

  @action
  void searchEvent(String text) => search = text;
}
