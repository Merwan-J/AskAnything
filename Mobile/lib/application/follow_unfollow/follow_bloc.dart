import 'dart:async';

import 'package:askanything/domain/user/user.dart';
import 'package:askanything/domain/user/user_failure.dart';
import 'package:askanything/domain/user/user_repository_interface.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'follow_event.dart';
import 'follow_state.dart';

class FollowBloc extends Bloc<FollowEvent, FollowState> {
  final IUserRepository _userRepository;

  FollowBloc(this._userRepository) : super(InitialFollowState()) {
    on<FollowUserEvent>((event, emit) async {
      Either<UserFailure, User> failureOrUser =
          await _userRepository.followUser(event.followerId, event.followingId);
      failureOrUser.fold(
        (failure) => emit(const FollowError("can't follow user")),
        (user) => emit(FollowSuccess(user)),
      );
    });

    on<UnfollowUserEvent>((event, emit) async {
      Either<UserFailure, User> failureOrUser = await _userRepository
          .unfollowUser(event.followerId, event.followingId);
      failureOrUser.fold(
        (failure) => emit(const UnFollowError("can't follow user")),
        (user) => emit(UnFollowSuccess(user)),
      );
    });
  }
}
