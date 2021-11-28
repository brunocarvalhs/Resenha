import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:resenha/app/modules/events/domain/usecases/register_event.dart';
import 'package:resenha/app/modules/events/infra/models/category_model.dart';
import 'package:resenha/app/modules/events/infra/models/event_model.dart';
import 'package:resenha/app/modules/events/presenter/stores/categories_store.dart';
import 'package:resenha/app/modules/events/presenter/stores/events_store.dart';
import 'package:uuid/uuid.dart';

part 'register_controller.g.dart';

@Injectable()
class RegisterController = _RegisterControllerBase with _$RegisterController;

abstract class _RegisterControllerBase with Store {
  final Uuid uuid;
  final CategoriesStore categoriesStore;
  final EventsStore eventsStore;
  final RegistersEvent registersEvent;

  _RegisterControllerBase(this.categoriesStore, this.eventsStore, this.registersEvent, this.uuid);

  Future<void> register() async {
    var user = EventModel(
      id: uuid.v4(),
      title: getName,
      description: getDiscrible,
      category: "",
      date: getDate,
      image: "",
      private: isPrivate,
    );
    var result = await registersEvent(user);
    result.fold((failure) {}, (list) {
      Modular.to.pushReplacementNamed("/events/");
    });
  }

  @observable
  CategoryModel? _category;

  @action
  void setCategory(int index) => _category = categoriesStore.listCategories[index];

  @computed
  CategoryModel? get getCategory => _category;

  @observable
  String? _name;

  @action
  void setName(String? value) => _name = value;

  @computed
  String get getName => _name ?? "";

  @observable
  String? _discrible;

  @action
  void setDiscrible(String? value) => _discrible = value;

  @computed
  String get getDiscrible => _discrible ?? "";

  @action
  CategoryModel getCategoryIndex(int index) => categoriesStore.listCategories[index];

  @action
  bool isSelected(int index) => categoriesStore.listCategories[index].id == getCategory?.id;

  @computed
  int get countCategory => categoriesStore.listCategories.length;

  @observable
  DateTime _date = DateTime.now();

  @action
  void setDate(DateTime? date) => _date = date ?? DateTime.now();

  @computed
  String get getDay => _date.day.toString();

  @computed
  String get getMonth => _date.month.toString();

  @computed
  DateTime get getDate => DateTime(
        _date.year,
        _date.month,
        _date.day,
        _time.hour,
        _time.minute,
        _date.second,
        _date.millisecond,
        _date.microsecond,
      );

  @observable
  TimeOfDay _time = TimeOfDay.now();

  @action
  void setTime(TimeOfDay? time) => _time = time ?? TimeOfDay.now();

  @computed
  String get getHour => _time.hour.toString();

  @computed
  String get getMinute => _time.minute.toString();

  @observable
  bool isPrivate = false;

  @observable
  bool isInvite = true;

  @action
  void setPrivateEvent(bool value) => isPrivate = value;

  @action
  void setInviteEvent(bool value) => isInvite = value;

  Future<void> defineDate(BuildContext context) async {
    final current = await showDatePicker(
      context: context,
      firstDate: DateTime.now(),
      initialDate: DateTime.now(),
      lastDate: DateTime(DateTime.now().year + 3),
    );
    setDate(current);
  }

  Future<void> defineTime(BuildContext context) async {
    final current = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.fromDateTime(DateTime.now()),
    );
    setTime(current ?? TimeOfDay.fromDateTime(DateTime.now()));
  }

  void redirectMeetingPoint() => Modular.to.pushReplacementNamed("/events/register/maps");
}
