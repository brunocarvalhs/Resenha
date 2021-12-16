import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:location/location.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:mobx/mobx.dart';
import 'package:resenha/app/modules/events/domain/usecases/find_place.dart';
import 'package:resenha/app/modules/events/presenter/stores/register_event_store.dart';

part 'meeting_point_controller.g.dart';

@Injectable()
class MeetingPointController = _MeetingPointControllerBase with _$MeetingPointController;

abstract class _MeetingPointControllerBase with Store {
  final RegisterEventStore registerEventStore;
  final Location location;
  final FindPlace findPlace;

  late GoogleMapController mapController;

  _MeetingPointControllerBase(this.registerEventStore, this.location, this.findPlace) {
    _determinePosition();
  }

  final pointController = TextEditingController();

  @observable
  LatLng position = const LatLng(45.521563, -122.677433);

  @action
  void setPosition(LatLng value) => position = value;

  @observable
  ObservableMap<MarkerId, Marker> points = ObservableMap.of({});

  @action
  void setPoint(MarkerId key, Marker value) => points[key] = value;

  @observable
  String? search = "";

  @computed
  String? get getSearch => search;

  void add(LatLng point) {
    registerEventStore.setPoint(
      point.latitude,
      point.longitude,
    );
    const key = MarkerId("test");
    final Marker marker = Marker(
      markerId: key,
      position: point,
      infoWindow: const InfoWindow(title: "markerIdVal", snippet: '*'),
    );
    setPoint(key, marker);
  }

  void onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

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

    final position = LatLng(_locationData.latitude!, _locationData.longitude!);
    mapController.getScreenCoordinate(position);
    setPosition(position);
  }
}
