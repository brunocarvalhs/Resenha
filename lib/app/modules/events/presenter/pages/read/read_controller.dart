import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'read_controller.g.dart';

@Injectable()
class ReadController = _ReadControllerBase with _$ReadController;

abstract class _ReadControllerBase with Store {}
