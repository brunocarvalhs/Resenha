import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:resenha/app/modules/login/domain/errors/errors.dart';
import 'package:resenha/app/modules/login/domain/usecases/logount.dart';
import 'package:resenha/app/modules/login/infra/repositories/login_repository.dart';

import 'logount_test.mocks.dart';

@GenerateMocks([
  LoginRepositoryImpl
], customMocks: [
  MockSpec<LoginRepositoryImpl>(
    as: #LoginRepositoryMock,
    returnNullOnMissingStub: true,
  )
])
void main() {
  final repository = MockLoginRepository();
  final usecase = LogoutImpl(repository);
  test('should verify if exist User Logged', () async {
    when(repository.logout()).thenAnswer((_) async => Right(unit));
    var result = (await usecase()).fold((l) => null, (r) => r);
    expect(result, unit);
  });
  test('should return null if user not logged', () async {
    when(repository.logout()).thenAnswer((_) async => Left(ErrorLogout(message: '')));

    var result = (await usecase()).fold(id, id);
    expect(result, isA<ErrorLogout>());
  });
}
