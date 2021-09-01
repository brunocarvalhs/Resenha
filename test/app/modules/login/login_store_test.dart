import 'package:flutter_test/flutter_test.dart';
import 'package:resenha/app/modules/login/login_store.dart';
 
void main() {
  late LoginStore store;

  setUpAll(() {
    store = LoginStore();
  });

  test('increment count', () async {
    expect(store.state, equals(0));
    store.update(store.state);
    expect(store.state, equals(1));
  });
}