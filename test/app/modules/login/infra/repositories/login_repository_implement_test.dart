import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:resenha/app/modules/login/domain/entities/logged_user_information.dart';
import 'package:resenha/app/modules/login/domain/errors/errors.dart';
import 'package:resenha/app/modules/login/infra/datasources/login_datasource.dart';
import 'package:resenha/app/modules/login/infra/models/user_model.dart';
import 'package:mockito/mockito.dart';
import 'package:resenha/app/modules/login/infra/repositories/login_repository_implement.dart';

import 'package:faker/faker.dart';

import 'login_repository_implement_test.mocks.dart';

@GenerateMocks([
  LoginDatasource
], customMocks: [
  MockSpec<LoginDatasource>(
    as: #LoginDataSourceMock,
    returnNullOnMissingStub: true,
  )
])
main() {
  final fake = Faker();
  final datasource = MockLoginDatasource();
  final userReturn = UserModel(
    name: fake.person.name(),
    email: fake.internet.email(),
    phoneNumber: fake.phoneNumber.toString(),
    photoURL: '',
  );
  final repository = LoginRepositoryImplement(datasource);

  group("feat(login) - loginGoogle", () {
    test('deve obter UserModel', () async {
      when(datasource.loginGoogle()).thenAnswer((_) async => userReturn);
      var result = await repository.loginGoogle();
      expect(result, isA<Right<dynamic, LoggedUserInformation>>());
    });
    test('deve retornar ErrorGoogleLogged', () async {
      when(datasource.loginGoogle()).thenThrow(ErrorGoogleLogged());
      var result = await repository.loginGoogle();
      expect(result.leftMap((l) => l is ErrorGoogleLogged), Left(true));
    });
  });

  group("feat(login) - loggedUser", () {
    test('deve obter o usuário atual logado', () async {
      when(datasource.currentUser()).thenAnswer((_) async => userReturn);
      var result = await repository.loggedUser();
      expect(result, isA<Right<dynamic, LoggedUserInformation>>());
    });
    test('deve lançar um ErrorLoggedUser quando o usuário não estiver logado', () async {
      when(datasource.currentUser()).thenThrow(ErrorLoggedUser());
      var result = await repository.loggedUser();
      expect(result.leftMap((l) => l is ErrorLoggedUser), Left(true));
    });
  });

  group("feat(login) - logout", () {
    test('deve fazer o logout', () async {
      when(datasource.logout()).thenAnswer((_) async {});
      var result = await repository.logout();
      expect(result, isA<Right<dynamic, Unit>>());
    });
    test('deve ser lançada o error ErrorLogout quando o usuário tenta fazer logout', () async {
      when(datasource.logout()).thenThrow(ErrorLogout());
      var result = await repository.logout();
      expect(result.leftMap((l) => l is ErrorLogout), Left(true));
    });
  });
}
