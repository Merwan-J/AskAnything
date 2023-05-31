import 'package:askanything/domain/user/user_form.dart';
import 'package:askanything/domain/user/user.dart';

abstract class UserEvent {}

class GetUserById extends UserEvent {
  final String id;
  GetUserById(this.id);
}

class DeleteUser extends UserEvent {
  final String id;
  DeleteUser(this.id);
}

class GetAllUsers extends UserEvent {}

class GetAdminUsers extends UserEvent {}

class FollowUser extends UserEvent {
  final String followerId;
  final String followingId;
  FollowUser(this.followerId, this.followingId);
}

class UnfollowUser extends UserEvent {
  final String followerId;
  final String followingId;
  UnfollowUser(this.followerId, this.followingId);
}

class GetFollowers extends UserEvent {
  final String userId;
  GetFollowers(this.userId);
}

class GetFollowings extends UserEvent {
  final String userId;
  GetFollowings(this.userId);
}
