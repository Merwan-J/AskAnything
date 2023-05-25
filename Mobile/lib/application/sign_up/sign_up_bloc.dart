import 'package:askanything/application/sign_up/sign_up_event.dart';
import 'package:askanything/application/sign_up/sign_up_state.dart';
import 'package:askanything/domain/auth/auth_repository_interface.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegistrationBloc extends Bloc<SignUpEvent, SignUpState> {
  final IAuthRepository _authRepository;

  RegistrationBloc(this._authRepository) : super(const SignUpState.initial()) {
    on<SignUpEventRegister>(
      ((event, emit) async {
        emit(const SignUpStateLoading());
        var result = await _authRepository.signup(signUpForm: event.form);
        if (result.hasError) {
          emit(SignUpState.failure(result.error!));
        } else {
          emit(const SignUpStateSuccess());
        }
      }),
    );
  }
}
