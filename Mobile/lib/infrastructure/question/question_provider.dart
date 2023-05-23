import 'dart:convert';

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
    var response = await _httpClient.post('questions',
        body: json.encode(questionFormDto.toJson()));

    if (response.statusCode == 201) {
      return QuestionDto.fromJson(jsonDecode(response.body));
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
    var response = await _httpClient.get('questions');

    if (response.statusCode == 200) {
      return (jsonDecode(response.body) as List)
          .map((e) => QuestionDto.fromJson(e))
          .toList();
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
}
