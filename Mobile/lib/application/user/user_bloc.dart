import 'package:askanything/domain/user/user.dart';
import 'package:askanything/domain/user/user_failure.dart';
import 'package:bloc/bloc.dart';
import 'package:askanything/domain/user/user_repository_interface.dart';
import 'package:dartz/dartz.dart';

import 'user_event.dart';
import 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final IUserRepository _userRepository;

  UserBloc(this._userRepository) : super(const UserState.initial()) {
    on<GetUserById>((event, emit) async {
      emit(const UserState.loading());
      Either<UserFailure, User> failureOrUser =
          await _userRepository.getUserById(event.id);
      failureOrUser.fold(
        (failure) => emit(UserState.error(failure)),
        (user) => emit(UserState.loaded(user)),
      );
    });

    on<CreateUser>((event, emit) async {
      emit(const UserState.loading());
      Either<UserFailure, User> failureOrUser =
          await _userRepository.createUser(event.userForm);
      failureOrUser.fold(
        (failure) => emit(UserState.error(failure)),
        (user) => emit(UserState.loaded(user)),
      );
    });

    on<UpdateUser>((event, emit) async {
      emit(const UserState.loading());
      Either<UserFailure, User> failureOrUser =
          await _userRepository.updateUser(event.userForm, event.userId);
      failureOrUser.fold(
        (failure) => emit(UserState.error(failure)),
        (user) => emit(UserState.loaded(user)),
      );
    });

    on<DeleteUser>((event, emit) async {
      emit(const UserState.loading());
      Either<UserFailure, void> failureOrVoid =
          await _userRepository.deleteUser(event.id);
      failureOrVoid.fold(
        (failure) => emit(UserState.error(failure)),
        (_) => emit(UserState.deleted()),
      );
    });

    on<GetAllUsers>((event, emit) async {
      emit(const UserState.loading());
      Either<UserFailure, List<User>> failureOrUsers =
          await _userRepository.getAllUsers();
      failureOrUsers.fold(
        (failure) => emit(UserState.error(failure)),
        (users) => emit(UserState.loadedAll(users)),
      );
    });

    on<FollowUser>((event, emit) async {
      emit(const UserState.loading());
      Either<UserFailure, void> failureOrVoid =
          await _userRepository.followUser(event.followerId, event.followingId);
      failureOrVoid.fold(
        (failure) => emit(UserState.error(failure)),
        (_) => emit(UserState.followed()),
      );
    });

    on<UnfollowUser>((event, emit) async {
      emit(const UserState.loading());
      Either<UserFailure, void> failureOrVoid = await _userRepository
          .unfollowUser(event.followerId, event.followingId);
      failureOrVoid.fold(
        (failure) => emit(UserState.error(failure)),
        (_) => emit(UserState.unfollowed()),
      );
    });

    on<GetFollowers>((event, emit) async {
      emit(const UserState.loading());
      Either<UserFailure, List<User>> failureOrFollowers =
          await _userRepository.getFollowers(event.userId);
      failureOrFollowers.fold(
        (failure) => emit(UserState.error(failure)),
        (followers) => emit(UserState.loadedFollowers(followers)),
      );
    });

    on<GetFollowings>((event, emit) async {
      emit(const UserState.loading());
      Either<UserFailure, List<User>> failureOrFollowings =
          await _userRepository.getFollowings(event.userId);
      failureOrFollowings.fold(
        (failure) => emit(UserState.error(failure)),
        (followings) => emit(UserState.loadedFollowings(followings)),
      );
    });
  }
}
