import 'package:askanything/Data/Local/Shared_prefs/shared_pref_service.dart';
import 'package:askanything/application/sign_up/sign_up_event.dart';
import 'package:askanything/application/sign_up/sign_up_state.dart';
import 'package:askanything/domain/auth/auth_failure.dart';
import 'package:askanything/domain/auth/auth_repository_interface.dart';
import 'package:askanything/infrastructure/auth/auth_api.dart';
import 'package:askanything/infrastructure/auth/auth_repository.dart';
import 'package:askanything/infrastructure/auth/auth_response_dto.dart';
import 'package:askanything/util/custom_http_client.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegistrationBloc extends Bloc<SignUpEvent, SignUpState> {
  late final CustomHttpClient _customHttpClient;
  late final AuthApi _authApi;
  late final IAuthRepository _authRepository;
  late final SharedPreferenceService _sharedPreferenceService;

  RegistrationBloc() : super(const SignUpState.initial()) {
    _customHttpClient = CustomHttpClient();
    _authApi = AuthApi(_customHttpClient);
    _sharedPreferenceService = SharedPreferenceService();
    _authRepository = AuthRepository(_authApi, _sharedPreferenceService);

    on<SignUpEventRegister>(
      ((event, emit) async {
        emit(const SignUpStateLoading());
        Either<AuthFailure, Unit> result =
            await _authRepository.signup(signUpForm: event.form);

        result.fold(
          (failure) => emit(SignUpState.failure(failure)),
          (response) => emit(const SignUpState.success()),
        );
      }),
    );
  }
}
