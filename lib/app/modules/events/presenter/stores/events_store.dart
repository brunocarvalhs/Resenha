import 'package:mobx/mobx.dart';
import 'package:resenha/app/modules/events/infra/models/event_model.dart';

part 'events_store.g.dart';

class EventsStore = _EventsStoreBase with _$EventsStore;

abstract class _EventsStoreBase with Store {
  _EventsStoreBase();

  @observable
  ObservableList<EventModel> _events = ObservableList<EventModel>.of([]);

  @computed
  bool get isEvents => _events.isNotEmpty;

  @computed
  int get countEvents => _events.length;

  @computed
  List<EventModel> get getEvents => _events.toList();

  @action
  void add(EventModel value) => _events.add(value);

  @action
  void searchEvent(String search) => _events.forEach((event) {});

  @action
  void setTitle(EventModel base, String? title) =>
      _events[_events.indexWhere((element) => element.id == base.id)].copyWith(title: title);

  @action
  void setDescription(EventModel base, String? description) =>
      _events[_events.indexWhere((element) => element.id == base.id)].copyWith(description: description);

  @action
  void setCategory(EventModel base, String? category) =>
      _events[_events.indexWhere((element) => element.id == base.id)].copyWith(category: category);

  @action
  void setDate(EventModel base, DateTime? date) =>
      _events[_events.indexWhere((element) => element.id == base.id)].copyWith(date: date);

  @action
  void setImage(EventModel base, String? image) =>
      _events[_events.indexWhere((element) => element.id == base.id)].copyWith(image: image);
}
