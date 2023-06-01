import 'package:equatable/equatable.dart';

abstract class FollowEvent extends Equatable {
  const FollowEvent();

  @override
  List<Object> get props => [];
}

class FollowUserEvent extends FollowEvent {
  final String followerId;
  final String followingId;
  const FollowUserEvent(this.followerId, this.followingId);

  @override
  List<Object> get props => [followerId, followingId];
}

class UnfollowUserEvent extends FollowEvent {
  final String followerId;
  final String followingId;
  const UnfollowUserEvent(this.followerId, this.followingId);

  @override
  List<Object> get props => [followerId, followingId];
}
