import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/question/question.dart';
import '../../domain/user/user.dart';
import '../../domain/user/user_failure.dart';
import '../../infrastructure/user/user_repository.dart';
import 'bookmark_event.dart';
import 'bookmark_state.dart';

class BookmarkBloc extends Bloc<BookmarkEvent, BookmarkState> {
  final UserRepository _userRepository;
  //TODO: accept question list bloc and add get questions event.

  BookmarkBloc({required UserRepository repository})
      : _userRepository = repository,
        super(const BookmarkState.initial()) {
    on<AddBookmarkEvent>((event, emit) async {
      emit(BookmarkState.loading());
      print("bloc");
      Either<UserFailure, User> user =
          await _userRepository.addBookmark(event.userId, event.questionId);
      print("bloc $user");
      user.fold(
          (l) => emit(const BookmarkState.failure("Failed to add bookmark")),
          (r) => emit(BookmarkState.bookmarkAddSuccess(r)));
    });
    on<RemoveBookmarkEvent>((event, emit) async {
      emit(BookmarkState.loading());
      Either<UserFailure, User> user =
          await _userRepository.removeBookmark(event.userId, event.questionId);

      user.fold(
          (l) => emit(const BookmarkState.failure("Failed to add bookmark")),
          (r) => emit(BookmarkState.bookmarkRemoveSuccess(r)));
    });
  }
}
