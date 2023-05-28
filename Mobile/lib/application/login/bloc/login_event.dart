part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {
  final LoginForm loginForm;
  const LoginEvent(this.loginForm); 
}

class LoginButtonPressed extends LoginEvent {
  final Name name;
  final Password password;

  LoginButtonPressed(LoginForm)
  :name = LoginForm.name, password = LoginForm.password, super(LoginForm);
}