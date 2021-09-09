import 'package:dartz/dartz.dart';
import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:resenha/app/modules/login/domain/entities/logged_user_information.dart';
import 'package:resenha/app/modules/login/domain/errors/errors.dart';
import 'package:resenha/app/modules/login/domain/repositories/login_repository.dart';
import 'package:resenha/app/modules/login/domain/usecases/login_google.dart';
import 'package:resenha/app/modules/login/infra/models/user_model.dart';
import 'package:mockito/mockito.dart';

import 'login_google_test.mocks.dart';

@GenerateMocks([
  LoginRepository
], customMocks: [
  MockSpec<LoginRepository>(
    as: #LoginRepositoryMockLoginGoogle,
    returnNullOnMissingStub: true,
  )
])
main() {
  final fake = Faker();
  final repository = MockLoginRepository();
  final usecase = LogginGoogleImplement(repository);

  test('feat(login) - deve logar com Google e retorna usuário logado',
      () async {
    when(repository.loginGoogle()).thenAnswer(
      (_) async => Right(
        UserModel(
          name: fake.person.name(),
          email: fake.internet.email(),
          phoneNumber: fake.phoneNumber.toString(),
          photoURL: '',
        ),
      ),
    );
    var result = await usecase();
    expect(result.fold((l) => null, id), isA<LoggedUserInformation>());
  });
  test(
      'feat(login) - deve retornar nulo se o usuário login Google não estiver logado',
      () async {
    when(repository.loginGoogle())
        .thenAnswer((_) async => Left(ErrorGoogleLogged()));

    var result = await usecase();
    expect(result.fold((l) => null, id), null);
  });
}
