import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:resenha/app/modules/login/domain/entities/logged_user_info.dart';
import 'package:resenha/app/modules/login/domain/errors/errors.dart';
import 'package:resenha/app/modules/login/domain/usecases/get_logged_user.dart';
import 'package:resenha/app/modules/login/infra/models/user_model.dart';
import 'package:mockito/mockito.dart';
import 'package:resenha/app/modules/login/infra/repositories/login_repository.dart';

import 'get_logged_user_test.mocks.dart';

@GenerateMocks([
  LoginRepositoryImpl
], customMocks: [
  MockSpec<LoginRepositoryImpl>(
    as: #LoginRepositoryMock,
    returnNullOnMissingStub: true,
  )
])
void main() {
  final repository = MockLoginRepositoryImpl();
  final usecase = GetLoggedUserImpl(repository);

  test('should verify if exist User Logged', () async {
    when(repository.loggedUser()).thenAnswer((_) async => Right(UserModel(name: "", email: "", photoUrl: "")));
    var result = await usecase();
    expect(result.fold((l) => null, (r) => r), isA<LoggedUserInfo>());
  });
  test('should return null if user not logged', () async {
    when(repository.loggedUser()).thenAnswer((_) async => Left(ErrorGetLoggedUser(message: '')));

    var result = await usecase();
    expect(result.fold((l) => null, (r) => r), null);
  });
}
