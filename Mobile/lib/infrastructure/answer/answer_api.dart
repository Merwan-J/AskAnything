import "dart:convert";

import "package:askanything/domain/answer/answer_failure.dart";
import "package:askanything/infrastructure/answer/answer_dto.dart";
import "package:askanything/infrastructure/answer/answer_form_dto.dart";
import "package:dartz/dartz.dart";
import "package:http/http.dart" as http;

class AnswerAPI {
  String baseUrl = "http://localhost:3000/answers";
  Future<Either<AnswerFailure, AnswerDto>> createAnswer(
      AnswerFormDto answerFormDto) async {
    var answer = await http.post(
        Uri.parse(
          baseUrl,
        ),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: json.encode(answerFormDto.toJson()));

    if (answer.statusCode == 201) {
      return right(AnswerDto.fromJson(jsonDecode(answer.body)));
    } else {
      return left(
          const AnswerFailure.serverError(failedValue: "Something went Wrong"));
    }
  }

  Future<Either<AnswerFailure, List<AnswerDto>>> getAnswers() async {
    var answers = await http.get(Uri.parse(baseUrl), headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    });

    if (answers.statusCode == 200) {
      List<dynamic> answersJson = jsonDecode(answers.body);
      return right(answersJson
          .map((answerJson) => AnswerDto.fromJson(answerJson))
          .toList());
    } else {
      return left(const AnswerFailure.emptyError(
          failedValue: "Something went wrong")); //TODO: handle the failures
    }
  }

  Future<Either<AnswerFailure, AnswerDto>> getAnswerById(String id) async {
    var answer =
        await http.get(Uri.parse(baseUrl + id), headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    });

    if (answer.statusCode == 200) {
      return right(AnswerDto.fromJson(jsonDecode(answer.body)));
    } else {
      return left(
          const AnswerFailure.emptyError(failedValue: "Something went Wrong"));
    }
  }

  Future<Either<AnswerFailure, AnswerDto>> updateAnswer(
      String id, String text) async {
    var answer = await http.patch(Uri.parse(baseUrl + id),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: json.encode({"text": text}));

    if (answer.statusCode == 200) {
      return right(AnswerDto.fromJson(jsonDecode(answer.body)));
    } else {
      return left(
          const AnswerFailure.emptyError(failedValue: "Something went Wrong"));
    }
  }

  Future<Either<AnswerFailure, Unit>> deleteAnswer(String id) async {
    var answer =
        await http.delete(Uri.parse(baseUrl + id), headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    });

    if (answer.statusCode == 200) {
      return right(unit);
    } else {
      return left(
          const AnswerFailure.emptyError(failedValue: "Something went Wrong"));
    }
  }
}
