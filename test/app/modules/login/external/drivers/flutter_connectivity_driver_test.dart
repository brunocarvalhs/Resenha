import 'package:connectivity/connectivity.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:resenha/app/modules/login/external/drivers/flutter_connectivity_driver.dart';
import 'package:mockito/mockito.dart';

import 'flutter_connectivity_driver_test.mocks.dart';

@GenerateMocks([
  Connectivity
], customMocks: [
  MockSpec<Connectivity>(
    as: #ConnectivityMock,
    returnNullOnMissingStub: true
  )
])
main() {
  final connectivity = MockConnectivity();
  final driver = FlutterConnectivityDriver(connectivity);
  
  test('feat(login) - deve retorna um boleano quando estiver conectado na internet movel', () async {
    when(connectivity.checkConnectivity())
        .thenAnswer((_) async => ConnectivityResult.mobile);
    expect(driver.isOnline, completion(true));
  });

  test('feat(login) - deve retorna um boleano quando estiver conectado na internet wifi', () async {
    when(connectivity.checkConnectivity())
        .thenAnswer((_) async => ConnectivityResult.wifi);
    expect(driver.isOnline, completion(true));
  });

  test('feat(login) - deve retorna um boleano false para sem conectividade', () async {
    when(connectivity.checkConnectivity())
        .thenAnswer((_) async => ConnectivityResult.none);
    expect(driver.isOnline, completion(false));
  });

  test('feat(login) - deve retorna um boleano false', () async {
    when(connectivity.checkConnectivity()).thenThrow(Exception());
    expect(driver.isOnline, throwsA(isA<Exception>()));
  });
}
