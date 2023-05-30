import 'dart:typed_data';

import 'package:askanything/domain/question/question_failure.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

import '../../../../domain/question/question.dart';
import '../../../../domain/question/question_form.dart';
import '../../../../domain/question/question_repository_interface.dart';

part 'question_post_event.dart';
part 'question_post_state.dart';

class QuestionPostBloc extends Bloc<QuestionPostEvent, QuestionPostState> {
  //accept question repository
  final IQuestionRepository _questionRepository;

  QuestionPostBloc(this._questionRepository) : super(QuestionPostInitial()) {
    on<QuestionPostAdd>((event, emit) async {
      //emit loading state
      emit(QuestionPosting());
      //add question

      final Either<QuestionFailure, Question> question =
          await _questionRepository.askQuestion(event.questionForm);
      //check if question is added
      question.fold((l) {
        //emit failure state
        emit(QuestionPostFailure("Question adding failed"));
      }, (r) {
        //emit success state
        emit(QuestionPostSuccess("Question added successfully"));
      });
    });
    //post question with image
    on<PostQuestionWithImage>((event, emit) async {
      //emit loading state
      emit(QuestionPostLoading());
      //add question
      final question =
          await _questionRepository.askQuestion(event.questionForm);
      //check if question is added
      if (question != null) {
        //emit success state
        emit(QuestionPostSuccess("Question added successfully"));
      } else {
        //emit failure state
        emit(QuestionPostFailure("Question adding failed"));
      }
    });

    //update question
    on<UpdateQuestion>((event, emit) async {
      //emit loading state
      emit(QuestionPostLoading());
      //update question
      final question = await _questionRepository.updateQuestion(
          event.questionForm, event.questionId);
      //check if question is updated
      if (question != null) {
        //emit success state
        emit(QuestionPostSuccess("Question updated successfully"));
      } else {
        //emit failure state
        emit(QuestionPostFailure("Question updating failed"));
      }
    });
  }
}
