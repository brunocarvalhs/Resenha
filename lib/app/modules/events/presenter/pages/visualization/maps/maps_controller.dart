import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:mobx/mobx.dart';

part 'maps_controller.g.dart';

@Injectable()
class MapsController = _MapsControllerBase with _$MapsController;

abstract class _MapsControllerBase with Store {
  _MapsControllerBase();
}
