import 'package:askanything/domain/question/question.dart';
import 'package:askanything/domain/question/question_failure.dart';
import 'package:askanything/domain/question/question_repository_interface.dart';
import 'package:askanything/domain/user/user.dart';
import 'package:askanything/domain/user/user_failure.dart';
import 'package:bloc/bloc.dart';
import 'package:askanything/domain/user/user_repository_interface.dart';
import 'package:dartz/dartz.dart';

import 'user_event.dart';
import 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final IUserRepository _userRepository;
  final IQuestionRepository _questionRepository;

  UserBloc(this._userRepository, this._questionRepository) : super(Initial()) {
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
      // emit(Loading());
      Either<UserFailure, List<dynamic>> failureOrUsers =
          await _userRepository.getAllUsers();
      // print(failureOrUsers);
      // print('in the bloc');
      failureOrUsers.fold(
        (failure) => emit(UserError(failure)),
        (users) => emit(LoadedAllUsers(users)),
      );
    });

    on<GetAdminUsers>((event, emit) async {
      // emit(Loading());
      Either<UserFailure, List<dynamic>> failureOrUsers =
          await _userRepository.getAdminUsers();
      failureOrUsers.fold(
        (failure) => emit(UserError(failure)),
        (users) => emit(LoadedAdminUsers(users)),
      );
    });

    on<FollowUser>((event, emit) async {
      emit(Loading());
      Either<UserFailure, User> failureOrUser =
          await _userRepository.followUser(event.followerId, event.followingId);
      failureOrUser.fold(
        (failure) => emit(UserError(failure)),
        (user) => emit(Followed(user)),
      );
    });

    on<UnfollowUser>((event, emit) async {
      emit(Loading());
      Either<UserFailure, User> failureOrUser = await _userRepository
          .unfollowUser(event.followerId, event.followingId);
      failureOrUser.fold(
        (failure) => emit(UserError(failure)),
        (user) => emit(Unfollowed(user)),
      );
    });

    on<GetFollowers>((event, emit) async {
      emit(Loading());
      Either<UserFailure, List<dynamic>> failureOrFollowers =
          await _userRepository.getFollowers(event.userId);
      failureOrFollowers.fold(
        (failure) => emit(UserError(failure)),
        (followers) => emit(LoadedFollowers(followers)),
      );
    });

    on<GetFollowings>((event, emit) async {
      emit(Loading());
      Either<UserFailure, List<dynamic>> failureOrFollowings =
          await _userRepository.getFollowings(event.userId);
      failureOrFollowings.fold(
        (failure) => emit(UserError(failure)),
        (followings) => emit(LoadedFollowings(followings)),
      );
    });

    on<DemoteUser>((event, emit) async {
      // emit(Loading());
      Either<UserFailure, dynamic> failureOrUser =
          await _userRepository.demoteUser(event.userId);
      failureOrUser.fold(
        (failure) => emit(UserError(failure)),
        (user) => add(GetAllUsers()),
      );
    });
    on<PromoteUser>((event, emit) async {
      // emit(Loading());
      Either<UserFailure, dynamic> failureOrUser =
          await _userRepository.promoteUser(event.userId);
      failureOrUser.fold(
        (failure) => emit(UserError(failure)),
        (user) => add(GetAllUsers()),
      );
    });
  }
}
