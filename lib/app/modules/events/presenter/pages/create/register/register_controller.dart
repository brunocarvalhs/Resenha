import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:resenha/app/modules/events/domain/usecases/list_categories.dart';
import 'package:resenha/app/modules/events/domain/usecases/select_image.dart';
import 'package:resenha/app/modules/events/infra/models/category_model.dart';
import 'package:resenha/app/modules/events/presenter/stores/register_event_store.dart';

part 'register_controller.g.dart';

@Injectable()
class RegisterController = _RegisterControllerBase with _$RegisterController;

abstract class _RegisterControllerBase with Store {
  final RegisterEventStore registerEventStore;
  final ListCategories listCategories;
  final SelectImage selectImage;

  _RegisterControllerBase(this.listCategories, this.registerEventStore, this.selectImage) {
    loadCategories();
  }

  @observable
  ObservableList<CategoryModel> _categories = ObservableList.of([]);

  @computed
  List<CategoryModel> get list => _categories.toList();

  @computed
  int get countCategories => _categories.length;

  @computed
  String get getDay => registerEventStore.getDate.day.toString();

  @computed
  String get getMonth => registerEventStore.getDate.month.toString();

  @computed
  String get getHour => registerEventStore.getDate.hour.toString();

  @computed
  String get getMinute => registerEventStore.getDate.minute.toString();

  Future<void> defineDate(BuildContext context) async {
    final current = await showDatePicker(
      context: context,
      firstDate: DateTime.now(),
      initialDate: DateTime.now(),
      lastDate: DateTime(DateTime.now().year + 3),
    );
    registerEventStore.setDate(current);
  }

  Future<void> defineTime(BuildContext context) async {
    final current = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.fromDateTime(DateTime.now()),
    );
    registerEventStore.setTime(current ?? TimeOfDay.fromDateTime(DateTime.now()));
  }

  void redirectMeetingPoint() => Modular.to.pushNamed("/events/register/maps");

  void save() => registerEventStore.register();

  Future<void> loadCategories() async {
    var result = await listCategories();
    result.fold((failure) {}, (list) {
      _categories.addAll(list as Iterable<CategoryModel>);
    });
  }

  Future<void> showAlbum() async {
    final result = await selectImage();
    result.fold((failure) {}, (image) {});
  }
}
