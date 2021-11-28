import 'dart:async';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:mobx/mobx.dart';
import '../register/register_controller.dart';

part 'meeting_point_controller.g.dart';

@Injectable()
class MeetingPointController = _MeetingPointControllerBase with _$MeetingPointController;

abstract class _MeetingPointControllerBase with Store {
  final RegisterController registerController;
  _MeetingPointControllerBase(this.registerController);

  @observable
  LatLng center = const LatLng(45.521563, -122.677433);

  late GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void onMapCreated(GoogleMapController controller) => mapController = controller;

  void redirectMeetingPoint() => Modular.to.pushReplacementNamed("/members");
}
