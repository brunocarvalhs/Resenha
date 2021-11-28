import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:resenha/app/modules/events/domain/usecases/read_event.dart';
import 'package:resenha/app/modules/events/infra/models/event_model.dart';
import 'package:resenha/app/modules/login/presenter/stores/auth_store.dart';

part 'read_controller.g.dart';

@Injectable()
class ReadController = _ReadControllerBase with _$ReadController;

abstract class _ReadControllerBase with Store {
  final AuthStore user;
  final ReadEvent readEvent;
  _ReadControllerBase(this.readEvent, this.user) {
    request(Modular.args.params["id"].toString());
  }

  @observable
  EventModel? eventModel;

  @action
  void setEvent(EventModel event) => eventModel = event;

  Future<void> request(String id) async {
    var result = await readEvent(id);
    result.fold((failure) {}, (event) {
      setEvent(event as EventModel);
    });
  }
}
