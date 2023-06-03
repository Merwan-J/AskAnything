import 'package:equatable/equatable.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object?> get props => [];
}

class AuthUnInitialized extends AuthState {
  const AuthUnInitialized();
}

class AppInitialized extends AuthState {
  final String? token;
  final bool isFirstRun;

  const AppInitialized({this.token, required this.isFirstRun});

  @override
  List<Object?> get props => [token, isFirstRun];
}

class AuthAuthenticated extends AuthState {
  final Map<String, dynamic> user;
  final String token;

  const AuthAuthenticated(this.user, this.token);

  @override
  List<Object?> get props => [user, token];
}

class AuthUnauthenticated extends AuthState {
  const AuthUnauthenticated();
}
