import 'package:mobx/mobx.dart';
import 'package:resenha/app/modules/events/infra/models/event_model.dart';

part 'events_store.g.dart';

class EventsStore = _EventsStoreBase with _$EventsStore;

abstract class _EventsStoreBase with Store {
  _EventsStoreBase();

  @observable
  ObservableList<EventModel> _events = ObservableList<EventModel>.of([]);

  @computed
  bool get isEvents => _events.length > 0;

  @computed
  int get countEvents => _events.length;

  @computed
  List<EventModel> get getEvents => _events.toList();

  @action
  void add(EventModel value) {
    _events.add(value);
  }

  @action
  void searchEvent(String search) => _events.forEach((event) {});
}
