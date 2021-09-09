import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:resenha/app/modules/login/domain/errors/errors.dart';
import 'package:resenha/app/modules/login/domain/repositories/login_repository.dart';
import 'package:resenha/app/modules/login/domain/usecases/logout.dart';
import 'package:mockito/mockito.dart';

import 'logout_test.mocks.dart';

@GenerateMocks([
  LoginRepository
], customMocks: [
  MockSpec<LoginRepository>(
    as: #LoginRepositoryMockLogout,
    returnNullOnMissingStub: true,
  )
])
main() {
  final repository = MockLoginRepository();
  final usecase = LogoutImplement(repository);
  test('feat(login) - deve verificar se existe usuário logado', () async {
    when(repository.logout()).thenAnswer((_) async => Right(unit));
    var result = await usecase();
    expect(result.fold((l) => null, id), unit);
  });
  test('feat(login) - deve retornar um valor nulo se o usuário não logado', () async {
    when(repository.logout()).thenAnswer((_) async => Left(ErrorLogout()));

    var result = await usecase();
    expect(result.fold(id, id), isA<ErrorLogout>());
  });
}
