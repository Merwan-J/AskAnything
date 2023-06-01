import 'package:askanything/domain/user/user_form.dart';
import 'package:askanything/domain/user/user.dart';
import 'package:equatable/equatable.dart';

abstract class UserEvent extends Equatable {
  const UserEvent();

  @override
  List<Object> get props => [];
}

class GetUserById extends UserEvent {
  final String id;
  const GetUserById(this.id);

  @override
  List<Object> get props => [id];
}

class DeleteUser extends UserEvent {
  final String id;
  const DeleteUser(this.id);

  @override
  List<Object> get props => [id];
}

class GetAllUsers extends UserEvent {}

class GetAdminUsers extends UserEvent {}

class FollowUser extends UserEvent {
  final String followerId;
  final String followingId;
  const FollowUser(this.followerId, this.followingId);

  @override
  List<Object> get props => [followerId, followingId];
}

class UnfollowUser extends UserEvent {
  final String followerId;
  final String followingId;
  const UnfollowUser(this.followerId, this.followingId);

  @override
  List<Object> get props => [followerId, followingId];
}
