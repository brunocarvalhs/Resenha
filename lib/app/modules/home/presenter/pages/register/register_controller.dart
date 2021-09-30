import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../../infra/models/event_model.dart';

part "register_controller.g.dart";

@Injectable()
class RegisterController = _RegisterControllerBase with _$RegisterController;

abstract class _RegisterControllerBase with Store {
  @observable
  ObservableList<EventModel> events = ObservableList<EventModel>();

  @action
  void addItem(EventModel data) => events.add(data);

// the same for this method but with a different operation.
  @action
  void removeItem(EventModel data) => events.remove(data);
}
