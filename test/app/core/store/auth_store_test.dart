import 'package:flutter_test/flutter_test.dart';
import 'package:resenha/app/core/stores/auth_store.dart';
 
void main() {
  late AuthStore store;

  setUpAll(() {
    store = AuthStore();
  });

  test('increment count', () async {
    expect(store.state, equals(0));
    store.update(store.state);
    expect(store.state, equals(1));
  });
}