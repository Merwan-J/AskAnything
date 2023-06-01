import 'package:askanything/domain/user/user.dart';
import 'package:askanything/domain/user/user_failure.dart';
import 'package:equatable/equatable.dart';

abstract class UserState extends Equatable {
  const UserState();

  @override
  List<Object> get props => [];
}

class Initial extends UserState {}

class Loading extends UserState {}

class LoadedUser extends UserState {
  final User user;
  const LoadedUser(this.user);

  @override
  List<Object> get props => [user];
}

class LoadedAllUsers extends UserState {
  final List<User> users;
  const LoadedAllUsers(this.users);

  @override
  List<Object> get props => [users];
}

class LoadedAdminUsers extends UserState {
  final List<User> users;
  const LoadedAdminUsers(this.users);

  @override
  List<Object> get props => [users];
}

class UserError extends UserState {
  final UserFailure failure;
  const UserError(this.failure);

  @override
  List<Object> get props => [failure];
}

class Deleted extends UserState {}

class Followed extends UserState {
  final User user;

  Followed(this.user);
}

class Unfollowed extends UserState {
  final User user;

  Unfollowed(this.user);
}

class Success extends UserState {}
