import 'dart:math';

import 'package:askanything/domain/answer/answer.dart';
import 'package:askanything/domain/answer/answer_failure.dart';
import 'package:askanything/domain/answer/answer_repository_interface.dart';
import 'package:askanything/domain/question/question_failure.dart';
import 'package:askanything/infrastructure/answer/answer_api.dart';
import 'package:askanything/infrastructure/answer/answer_dto.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart';
import 'package:meta/meta.dart';

import 'answer_event.dart';
import 'answer_state.dart';

class AnswerBloc extends Bloc<AnswerEvent, AnswerState> {
  final IAnswerRepository _answerRepository;

  AnswerBloc(this._answerRepository) : super(const InitialAnswerState()) {
    on<LoadAnswerEvent>((event, emit) async {
      emit(AnswerState.loading());
      Either<AnswerFailure, Answer> answer =
          await _answerRepository.getAnswerById(event.answerId);
      answer.fold(
          (l) => emit(const AnswerState.error("Failed to load answers")),
          (r) => emit(AnswerState.loaded(answer)));
    });
    on<LoadAnswersByQuestionEvent>(((event, emit) async {
      print("loading anwers by questions");
      Either<AnswerFailure, List<Answer>> answers =
          await _answerRepository.getAnswersByQuestion(event.questionId);
      print(answers);
      print("loaded answers by questions id");
      answers.fold(
          (l) => emit(const ErrorAnswerState("Failed to load answers")), (r) {
        print("1234567890-09876");
        print(r);
        return emit(ListLoadedAnswerState(r));
      });
    }));

    on<AddAnswerEvent>(((event, emit) async {
      // print("creating answer");
      Either<AnswerFailure, Answer> answer =
          await _answerRepository.createAnswer(event.answerForm);
      print("unit testing");
      print(answer);

      answer.fold(
          (l) => emit(const AnswerState.error("failed to create answer")), (r) {
        emit(AnswerState.loaded(answer));
        add(LoadAnswersByQuestionEvent(r.question));
      });
    }));
    on<UpdateAnswerEvent>(((event, emit) async {
      print("updating answer");
      Either<AnswerFailure, Answer> answer =
          await _answerRepository.updateAnswer(event.id, event.text);

      if (answer.isRight()) {
        print('done');
      } else {
        print("try again");
      }
      print(answer);
      answer.fold(
          (l) => emit(const AnswerState.error("Failed to update answer")),
          (r) => {
                emit(const AnswerState.success()),
                add(LoadAnswerEvent(event.id))
              });
    }));

    on<DeleteAnswerEvent>((event, emit) async {
      print("deleting");
      Either<AnswerFailure, Unit> answer =
          await _answerRepository.deleteAnswer(event.answerId);
      print("testt..");
      print(answer);

      answer.fold(
          (l) => emit(AnswerState.error("Failed to delete answer")),
          (r) => {
                emit(const AnswerState.success()),
                add(LoadAnswerEvent(event.answerId))
              });
    });

    //TODO: Implement upvote and downvote
  }
}
