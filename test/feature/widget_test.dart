import 'package:flutter_test/flutter_test.dart';
import 'package:resenha/core/app_core.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(AppCore());

  });
}
