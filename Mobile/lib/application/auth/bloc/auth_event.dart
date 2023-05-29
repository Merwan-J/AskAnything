part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent {
  const AuthEvent();
}

class SignedInEvent extends AuthEvent {
  final Name name;
  final Password password;

  const SignedInEvent(this.name, this.password);
}

class LogoutEvent extends AuthEvent {}