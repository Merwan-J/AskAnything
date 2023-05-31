import 'package:askanything/domain/user/user.dart';
import 'package:askanything/domain/user/user_failure.dart';
import 'package:bloc/bloc.dart';
import 'package:askanything/domain/user/user_repository_interface.dart';
import 'package:dartz/dartz.dart';

import 'user_event.dart';
import 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final IUserRepository _userRepository;

  UserBloc(this._userRepository) : super(Initial()) {
    on<GetUserById>((event, emit) async {
      emit(Loading());
      Either<UserFailure, User> failureOrUser =
          await _userRepository.getUserById(event.id);
      failureOrUser.fold(
        (failure) => emit(UserError(failure)),
        (user) => emit(LoadedUser(user)),
      );
    });

    on<DeleteUser>((event, emit) async {
      emit(Loading());
      Either<UserFailure, void> failureOrVoid =
          await _userRepository.deleteUser(event.id);
      failureOrVoid.fold(
        (failure) => emit(UserError(failure)),
        (_) => emit(Deleted()),
      );
    });

    on<GetAllUsers>((event, emit) async {
      emit(Loading());
      Either<UserFailure, List<User>> failureOrUsers =
          await _userRepository.getAllUsers();
      failureOrUsers.fold(
        (failure) => emit(UserError(failure)),
        (users) => emit(LoadedAllUsers(users)),
      );
    });

    on<GetAdminUsers>((event, emit) async {
      emit(Loading());
      Either<UserFailure, List<User>> failureOrUsers =
          await _userRepository.getAdminUsers();
      failureOrUsers.fold(
        (failure) => emit(UserError(failure)),
        (users) => emit(LoadedAdminUsers(users)),
      );
    });

    on<FollowUser>((event, emit) async {
      emit(Loading());
      Either<UserFailure, void> failureOrVoid =
          await _userRepository.followUser(event.followerId, event.followingId);
      failureOrVoid.fold(
        (failure) => emit(UserError(failure)),
        (_) => emit(Followed()),
      );
    });

    on<UnfollowUser>((event, emit) async {
      emit(Loading());
      Either<UserFailure, void> failureOrVoid = await _userRepository
          .unfollowUser(event.followerId, event.followingId);
      failureOrVoid.fold(
        (failure) => emit(UserError(failure)),
        (_) => emit(Unfollowed()),
      );
    });

    on<GetFollowers>((event, emit) async {
      emit(Loading());
      Either<UserFailure, List<User>> failureOrFollowers =
          await _userRepository.getFollowers(event.userId);
      failureOrFollowers.fold(
        (failure) => emit(UserError(failure)),
        (followers) => emit(LoadedFollowers(followers)),
      );
    });

    on<GetFollowings>((event, emit) async {
      emit(Loading());
      Either<UserFailure, List<User>> failureOrFollowings =
          await _userRepository.getFollowings(event.userId);
      failureOrFollowings.fold(
        (failure) => emit(UserError(failure)),
        (followings) => emit(LoadedFollowings(followings)),
      );
    });
  }
}
