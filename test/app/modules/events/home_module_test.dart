import 'package:modular_test/modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:resenha/app/modules/events/events_module.dart';

void main() {
  setUpAll(() {
    initModule(EventsModule());
  });
}
