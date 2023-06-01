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

class GetFollowers extends FollowEvent {
  final String userId;
  const GetFollowers(this.userId);

  @override
  List<Object> get props => [userId];
}

class GetFollowings extends FollowEvent {
  final String userId;
  const GetFollowings(this.userId);

  @override
  List<Object> get props => [userId];
}
