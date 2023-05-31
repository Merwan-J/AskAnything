import 'package:askanything/domain/user/user.dart';
import 'package:askanything/domain/user/user_failure.dart';

abstract class UserState {}

class Initial extends UserState {}

class Loading extends UserState {}

class LoadedUser extends UserState {
  final User user;
  LoadedUser(this.user);
}

class LoadedAllUsers extends UserState {
  final List<User> users;
  LoadedAllUsers(this.users);
}

class LoadedAdminUsers extends UserState {
  final List<User> users;
  LoadedAdminUsers(this.users);
}

class LoadedFollowers extends UserState {
  final List<User> followers;
  LoadedFollowers(this.followers);
}

class LoadedFollowings extends UserState {
  final List<User> followings;
  LoadedFollowings(this.followings);
}

class UserError extends UserState {
  final UserFailure failure;
  UserError(this.failure);
}

class Deleted extends UserState {}

class Followed extends UserState {}

class Unfollowed extends UserState {}

class Success extends UserState {}
