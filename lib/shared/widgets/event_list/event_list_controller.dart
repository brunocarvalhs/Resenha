import 'package:flutter/material.dart';
import 'package:resenha/shared/models/event_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EventListController {
  final eventNotifier = ValueNotifier<List<EventModel>>(<EventModel>[
    EventModel(
      name: "Resenha do Thiagão",
      description: "Partiu praia com muita bebi...",
      category: 1,
      day: 18,
      month: 06,
      hour: 21,
      minutes: 00,
      photo:
          "https://media-cdn.tripadvisor.com/media/photo-s/09/9f/5d/2e/pedra-bela-vista.jpg",
      members: 10,
      point:
          "Av. Embaixador Pedro de Toledo, 15 - Centro, São Vicente - SP, 11310-080",
    ),
    EventModel(
      name: "Yeah, Boiada",
      description: "Eae galeri!! Partiu beber, ca...",
      category: 1,
      day: 18,
      month: 06,
      hour: 21,
      minutes: 00,
      photo: "https://t1.uc.ltmcdn.com/pt/images/6/2/1/17_jogos_de_bar_para_beber_com_os_amigos_29126_600.jpg",
      members: 10,
      point:
          "Av. Embaixador Pedro de Toledo, 15 - Centro, São Vicente - SP, 11310-080",
    ),
  ]);
  List<EventModel> get events => eventNotifier.value;
  set events(List<EventModel> value) => eventNotifier.value = value;

  EventListController() {
    getEvents();
  }
  void getEvents() async {
    try {
      final instance = await SharedPreferences.getInstance();
      final response = instance.getStringList("events");
      events = response!.map((e) => EventModel.fromJson(e)).toList();
    } catch (e) {}
  }

  void dispose() {
    eventNotifier.dispose();
  }
}
