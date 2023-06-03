import 'package:askanything/Data/Local/Shared_prefs/shared_pref_service.dart';
import 'package:askanything/domain/auth/auth_failure.dart';
import 'package:askanything/domain/auth/auth_repository_interface.dart';
import 'package:askanything/domain/user/user.dart';
import 'package:askanything/infrastructure/auth/auth_api.dart';
import 'package:askanything/infrastructure/auth/auth_response_dto.dart';
import 'package:askanything/infrastructure/user/user_mapper.dart';
import 'package:askanything/util/custom_http_client.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';

import '../../../infrastructure/auth/auth_repository.dart';
import 'login_event.dart';
import 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final IAuthRepository _authRepository;

  LoginBloc(this._authRepository) : super(LoginStateInitial()) {
    on<LoginEventLogin>(
      ((event, emit) async {
        emit(LoginStateLoading());
        Either<AuthFailure, AuthResponseDto> result =
            await _authRepository.login(loginForm: event.form);

        result.fold(
          (failure) => emit(LoginStateFailure(failure)),
          (response) =>
              emit(LoginStateSuccess(response.user, response.accessToken)),
        );
      }),
    );
  }
}
