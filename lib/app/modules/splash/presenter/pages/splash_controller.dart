import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:resenha/app/modules/login/presenter/stores/auth_store.dart';

part "splash_controller.g.dart";

@Injectable()
class SplashController = _SplashControllerBase with _$SplashController;

abstract class _SplashControllerBase with Store {
  _SplashControllerBase();

  validationUserAuth() async {
    Modular.get<AuthStore>().checkLogin().then((v) {
      if (v) Modular.to.pushReplacementNamed("/home");
      return Future.delayed(Duration(seconds: 3));
    }).then((value) {
      Modular.to.pushReplacementNamed("/login");
    });
  }
}
