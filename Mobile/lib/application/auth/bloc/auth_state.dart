part of 'auth_bloc.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class Authenticated extends AuthState {
  final Name name;

  Authenticated(this.name);
}

class Unauthenticated extends AuthState {}