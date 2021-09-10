import 'package:flutter/cupertino.dart';
import 'package:resenha/app/modules/splash/presenter/pages/splash_page.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';

main() {
  group('feat(splash) - Page', () {
    testWidgets('logo image render', (WidgetTester tester) async {
      await tester.pumpWidget(buildTestableWidget(SplashPage()));
      expect(find.byKey(Key("logo")), findsOneWidget);
    });
  });
}