import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:resenha/app/modules/login/domain/errors/errors.dart';
import 'package:resenha/app/modules/login/infra/drivers/connectivity_driver.dart';
import 'package:mockito/mockito.dart';
import 'package:resenha/app/modules/login/infra/services/connectivity_service_implement.dart';

import 'connectivity_service_implement_test.mocks.dart';

@GenerateMocks([
  ConnectivityDriver
], customMocks: [
  MockSpec<ConnectivityDriver>(
    as: #ConnectivityDriverMock,
    returnNullOnMissingStub: true,
  )
])
main() {
  final driver = MockConnectivityDriver();
  final service = ConnectivityServiceImplement(driver);

  group("feat(login) - ConnectivityServiceImplement", () {
    test('deve retornar um booleano', () async {
      when(driver.isOnline).thenAnswer((_) async => true);
      var result = await service.isOnline();
      expect(result, isA<Right<dynamic, bool>>());
    });

    test('deve retorna um error ErrorLoginEmail', () async {
      when(service.isOnline()).thenThrow(ConnectionError());
      var result = await service.isOnline();
      expect(result.leftMap((l) => l is ConnectionError), Left(true));
    });
  });
}
