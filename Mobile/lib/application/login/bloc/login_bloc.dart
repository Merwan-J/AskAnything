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
  late final CustomHttpClient _customHttpClient;
  late final AuthApi _authApi;
  late final IAuthRepository _authRepository;
  late final SharedPreferenceService _sharedPreferenceService;

  LoginBloc() : super(LoginStateInitial()) {
    _customHttpClient = CustomHttpClient();
    _authApi = AuthApi(_customHttpClient);
    _sharedPreferenceService = SharedPreferenceService();
    _authRepository = AuthRepository(_authApi, _sharedPreferenceService);

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
