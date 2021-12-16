import 'package:contacts_service/contacts_service.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:resenha/app/modules/events/domain/usecases/list_contacts.dart';
import 'package:resenha/app/modules/events/presenter/stores/register_event_store.dart';

part 'members_controller.g.dart';

@Injectable()
class MembersController = _MembersControllerBase with _$MembersController;

abstract class _MembersControllerBase with Store {
  final RegisterEventStore registerEventStore;
  final ListContacts listContacts;

  _MembersControllerBase(this.registerEventStore, this.listContacts) {
    loadingContacts();
  }

  @observable
  ObservableList<Contact> _contacts = ObservableList.of([]);

  @computed
  List<Contact> get getContacts => _contacts.toList();

  @computed
  int get countContacts => _contacts.length;

  @action
  void setAll(List<Contact> iterable) => _contacts.addAll(iterable);

  void loadingContacts() async {}
}
