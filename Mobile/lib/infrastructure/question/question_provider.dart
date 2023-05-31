import 'dart:convert';
import 'dart:ffi';

import 'package:askanything/infrastructure/question/question_form_dto.dart';
import 'package:askanything/util/custom_http_client.dart';
import 'package:askanything/util/string_extension.dart';

import 'package:askanything/domain/question/local/question_entity.dart';
import 'package:askanything/domain/question/question.dart';
import 'package:askanything/infrastructure/question/question_dto.dart';

import 'package:askanything/domain/question/question_failure.dart';

import 'package:askanything/domain/question/question_repository_interface.dart';

import 'package:dartz/dartz.dart';

class QuestionProvider {
  final CustomHttpClient _httpClient;

  QuestionProvider(this._httpClient);

  // TODO: handle image uploads/ multipart form data

  Future<QuestionDto> createQuestion(QuestionFormDto questionFormDto) async {
    final author = "6448f5ead561de32dc337d5b";
    print("author: $author");
    var response = await _httpClient.post('questions',
        body: json.encode(questionFormDto.toJson()..['author'] = author));
    print("response: ${response.body}");

    if (response.statusCode.toString() == 201.toString()) {
      Map<String, dynamic> decoded =
          await json.decode(response.body)['data']["question"];
      QuestionDto questionDto = getQuestionDto(decoded);
      return questionDto;
    } else {
      throw Exception('Failed to create question');
    }
  }

  Future<QuestionDto> updateQuestion(
      QuestionFormDto questionFormDto, String questionId) async {
    var response = await _httpClient.put('questions/${questionId}',
        body: json.encode(QuestionFormDto.fromJson(questionFormDto.toJson())));

    if (response.statusCode == 200) {
      return QuestionDto.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to update question');
    }
  }

  Future<QuestionDto> getQuestion(String id) async {
    var response = await _httpClient.get('questions/$id');

    if (response.statusCode == 200) {
      return QuestionDto.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to get question');
    }
  }

  Future<List<QuestionDto>> getQuestions() async {
    print("fetching questions");
    var response = await _httpClient.get('questions');
    //print print
    print("res");
    var decoded = await jsonDecode(response.body);

    if (response.statusCode.toString() == 200.toString()) {
      var questionsLst = decoded["data"]["questions"];

      var questionLstDto =
          (questionsLst as List).map((e) => getQuestionDto(e)).toList();
      print("success");
      return (questionsLst).map((e) => getQuestionDto(e)).toList();
    } else {
      throw Exception('Failed to get questions');
    }
  }

  Future<List<QuestionDto>> getQuestionsByTopic(String topic) async {
    var response = await _httpClient.get('questions?topic=$topic');

    if (response.statusCode == 200) {
      return (jsonDecode(response.body) as List)
          .map((e) => QuestionDto.fromJson(e))
          .toList();
    } else {
      throw Exception('Failed to get questions');
    }
  }

  Future<List<QuestionDto>> getQuestionsByUser(String userId) async {
    var response = await _httpClient.get('questions?userId=$userId');

    if (response.statusCode == 200) {
      return (jsonDecode(response.body) as List)
          .map((e) => QuestionDto.fromJson(e))
          .toList();
    } else {
      throw Exception('Failed to get questions');
    }
  }

  Future<Unit> deleteQuestion(String id) async {
    var response = await _httpClient.delete('questions/$id');

    if (response.statusCode == 200) {
      return unit;
    } else {
      throw Exception('Failed to delete question');
    }
  }

  Future<QuestionDto> upvoteQuestion(String id) async {
    var response = await _httpClient.post('questions/$id/upvote');

    if (response.statusCode == 200) {
      return QuestionDto.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to upvote question');
    }
  }

  Future<QuestionDto> downvoteQuestion(String id) async {
    var response = await _httpClient.post('questions/$id/downvote');

    if (response.statusCode == 200) {
      return QuestionDto.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to downvote question');
    }
  }

  QuestionDto getQuestionDto(decoded) {
    QuestionDto questionDto = QuestionDto(
      id: decoded['_id'],
      title: decoded['title'],
      description: decoded['description'],
      topic: decoded['topic'],
      author: decoded['author'],
      answers: decoded['answers'],
      anonymous: decoded['anonymous'],
      createdAt: DateTime.parse(decoded["createdAt"]),
      updatedAt: DateTime.parse(decoded["updatedAt"]),
      likes: decoded['likes'],
      dislikes: decoded['dislikes'],
    );
    return questionDto;
  }
}
