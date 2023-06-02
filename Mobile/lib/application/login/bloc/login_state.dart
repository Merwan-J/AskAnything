import 'package:askanything/domain/auth/auth_failure.dart';
import 'package:askanything/domain/user/user.dart';
import 'package:equatable/equatable.dart';

class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object?> get props => [];
}

class LoginStateInitial extends LoginState {}

class LoginStateLoading extends LoginState {}

class LoginStateSuccess extends LoginState {
  final Map<String, dynamic> user;
  final String token;

  LoginStateSuccess(this.user, this.token);

  @override
  List<Object?> get props => [user, token];
}

class LoginStateFailure extends LoginState {
  final AuthFailure error;

  LoginStateFailure(this.error);

  @override
  List<Object?> get props => [error];
}
