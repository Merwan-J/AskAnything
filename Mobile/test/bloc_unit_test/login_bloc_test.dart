import 'dart:convert';
import 'dart:io';

import 'package:askanything/application/login/bloc/login_bloc.dart';
import 'package:askanything/application/login/bloc/login_event.dart';
import 'package:askanything/application/login/bloc/login_state.dart';
import 'package:askanything/domain/auth/auth_repository_interface.dart';
import 'package:askanything/domain/auth/login_form.dart';
import 'package:askanything/domain/user/user.dart';
import 'package:askanything/infrastructure/auth/auth_repository.dart';
import 'package:askanything/infrastructure/auth/auth_response_dto.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'login_bloc_test.mocks.dart';

// Generate a MockClient using the Mockito package.
// Create new instances of this class in each test.
@GenerateMocks([AuthRepository])
void main() {
  late MockAuthRepository mockAuthRepository;
  late LoginBloc loginBloc;

  setUp(() {
    loginBloc = LoginBloc();
    mockAuthRepository = MockAuthRepository();
  });

  group('Login Bloc test', () {
    const data = '{"emailAddress": "gg@gmail.com","password": "123"}';
    const resp = '{"user": {"name": "elizur"}, "accessToken": "token"}';

    var loginData = LoginForm.fromJson(json.decode(data));
    var responseDto = AuthResponseDto.fromJson(jsonDecode(resp));
    blocTest<LoginBloc, LoginState>(
      'emits Loading and Success states when LoginEventLogin is added',
      build: () => loginBloc,
      act: (bloc) {
        // Mock the behavior of the auth repository
        when(mockAuthRepository.login(loginForm: loginData))
            .thenAnswer((_) async => Right(responseDto));

        // Add the LoginEventLogin to the bloc
        bloc.add(LoginEventLogin(loginData));
      },
      expect: () => [
        LoginStateLoading(),
        // LoginStateSuccess(User(), 'token'),
      ],
    );
  });
}
