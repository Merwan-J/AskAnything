import 'package:askanything/domain/user/user.dart';
import 'package:equatable/equatable.dart';

abstract class FollowState extends Equatable {
  const FollowState();

  @override
  List<Object> get props => [];
}

class InitialFollowState extends FollowState {}

class FollowLoading extends FollowState {}

class FollowSuccess extends FollowState {
  final User user;

  const FollowSuccess(this.user);

  @override
  List<Object> get props => [user];
}

class UnFollowSuccess extends FollowState {
  final User user;

  const UnFollowSuccess(this.user);

  @override
  List<Object> get props => [user];
}

class FollowError extends FollowState {
  final String message;

  const FollowError(this.message);

  @override
  List<Object> get props => [message];
}

class UnFollowError extends FollowState {
  final String message;

  const UnFollowError(this.message);

  @override
  List<Object> get props => [message];
}

class LoadedFollowers extends FollowState {
  final List<User> followers;
  const LoadedFollowers(this.followers);

  @override
  List<Object> get props => [followers];
}

class LoadedFollowings extends FollowState {
  final List<User> followings;
  const LoadedFollowings(this.followings);

  @override
  List<Object> get props => [followings];
}
