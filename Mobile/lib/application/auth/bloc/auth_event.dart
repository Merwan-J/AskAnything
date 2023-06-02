import 'package:equatable/equatable.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object?> get props => [];
}

class AuthEventSignedIn extends AuthEvent {
  final Map<String, dynamic> user;
  final String token;

  const AuthEventSignedIn(this.user, this.token);

  @override
  List<Object?> get props => [user, token];
}

class AuthEventSignOut extends AuthEvent {
  const AuthEventSignOut();
}
