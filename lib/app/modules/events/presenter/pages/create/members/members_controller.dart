import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:resenha/app/modules/events/domain/usecases/list_contacts.dart';
import '../register/register_controller.dart';

part 'members_controller.g.dart';

@Injectable()
class MembersController = _MembersControllerBase with _$MembersController;

abstract class _MembersControllerBase with Store {
  final RegisterController registerController;
  final ListContacts listContacts;
  _MembersControllerBase(this.registerController, this.listContacts);

  Future<void> create() => registerController.register();
}
