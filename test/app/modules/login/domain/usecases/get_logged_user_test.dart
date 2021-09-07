import 'package:dartz/dartz.dart';
import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:resenha/app/modules/login/domain/entities/logged_user_information.dart';
import 'package:resenha/app/modules/login/domain/errors/errors.dart';
import 'package:resenha/app/modules/login/domain/repositories/login_repository.dart';
import 'package:resenha/app/modules/login/domain/usecases/get_logged_user.dart';
import 'package:resenha/app/modules/login/infra/models/user_model.dart';
import 'package:mockito/mockito.dart';

import 'get_logged_user_test.mocks.dart';

@GenerateMocks([
  LoginRepository
], customMocks: [
  MockSpec<LoginRepository>(
    as: #LoginRepositoryMockGetLoggedUser,
    returnNullOnMissingStub: true,
  )
])
main() {
  final fake = Faker();
  final repository = MockLoginRepository();
  final usecase = GetLoggedUserImplement(repository);

  test('feat(login) - deve verificar se existe usuário logado', () async {
    when(repository.loggedUser()).thenAnswer(
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

  test('feat(login) - deve retornar nulo se o usuário não estiver logado',
      () async {
    when(repository.loggedUser())
        .thenAnswer((_) async => Left(ErrorLoggedUser()));

    var result = await usecase();
    expect(result.fold((l) => null, id), null);
  });
}
