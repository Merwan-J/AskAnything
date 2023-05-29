import 'dart:ffi';

import 'package:askanything/domain/auth/auth_repository_interface.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../domain/auth/login_form.dart';
import '../../../domain/auth/name.dart';
import '../../../domain/auth/password.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final IAuthRepository authRepository;
  LoginBloc(this.authRepository) : super(LoginInitial());
  // @override
  Future<dynamic> mapStatetoEvent(LoginEvent event, Emitter emit) async {
    emit(LoginLoading());
    try {
      final result = await authRepository.login(loginForm: event.loginForm);
      if (result == null) {
        return emit(LoginFailure('Invalid credentials'));
      } else {
        return emit(LoginSuccess());
      }
    } catch (e) {
      return emit(LoginFailure(e.toString()));
    }
  }
}
