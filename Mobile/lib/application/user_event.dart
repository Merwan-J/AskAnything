import 'package:askanything/domain/user/user_form.dart';
import 'package:askanything/domain/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_event.freezed.dart';

@freezed
abstract class UserEvent with _$UserEvent {
  const factory UserEvent.getUserById(String id) = GetUserById;
  const factory UserEvent.createUser(UserForm userForm) = CreateUser;
  const factory UserEvent.updateUser(UserForm userForm, String userId) =
      UpdateUser;
  const factory UserEvent.deleteUser(String id) = DeleteUser;
  const factory UserEvent.getAllUsers() = GetAllUsers;
  const factory UserEvent.followUser(String followerId, String followingId) =
      FollowUser;
  const factory UserEvent.unfollowUser(String followerId, String followingId) =
      UnfollowUser;
  const factory UserEvent.getFollowers(String userId) = GetFollowers;
  const factory UserEvent.getFollowings(String userId) = GetFollowings;
}
