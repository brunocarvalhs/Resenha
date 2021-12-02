import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:location/location.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:mobx/mobx.dart';
import '../register/register_controller.dart';

part 'meeting_point_controller.g.dart';

@Injectable()
class MeetingPointController = _MeetingPointControllerBase with _$MeetingPointController;

abstract class _MeetingPointControllerBase with Store {
  final RegisterController registerController;
  final Location location;

  late GoogleMapController mapController;

  _MeetingPointControllerBase(this.registerController, this.location) {
    _determinePosition();
  }

  final pointController = TextEditingController();

  @observable
  LatLng position = const LatLng(45.521563, -122.677433);

  @action
  void setPosition(LatLng value) => position = value;

  @observable
  Map<MarkerId, Marker> points = <MarkerId, Marker>{};

  @action
  void setPoint(MarkerId key, Marker value) => points[key] = value;

  @observable
  String? search = "";

  @computed
  String? get getSearch => search;

  void add(LatLng point) {
    const key = MarkerId("test");
    final Marker marker = Marker(
      markerId: key,
      position: point,
      infoWindow: const InfoWindow(title: "markerIdVal", snippet: '*'),
    );

    setPoint(key, marker);
  }

  void onMapCreated(GoogleMapController controller) => mapController = controller;

  void redirecMembers() => Modular.to.pushNamed("/events/register/members");

  @action
  void searchPoint(String text) => search = text;

  Future<void> _determinePosition() async {
    bool _serviceEnabled;
    PermissionStatus _permissionGranted;

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    var _locationData = await location.getLocation();
    setPosition(LatLng(_locationData.latitude!, _locationData.longitude!));
  }
}
