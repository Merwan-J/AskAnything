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

      Either<QuestionFailure, Question> failureOrQuestion =
          await _questionRepository.getQuestionById(event.id);

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
  }
}
