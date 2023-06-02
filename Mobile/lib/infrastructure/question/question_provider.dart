import 'dart:convert';
import 'dart:ffi';

import 'package:askanything/infrastructure/question/question_form_dto.dart';
import 'package:askanything/infrastructure/user/author_dto.dart';
import 'package:askanything/util/custom_http_client.dart';
import 'package:askanything/util/custom_timeout.dart';
import 'package:askanything/util/string_extension.dart';

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
    final author = "644a59d906e58c639150523c";
    print("author: $author");
    var response = await _httpClient.post('questions',
        body: json.encode(questionFormDto.toJson()..['author'] = author));
    print("response: ${response.body}");

    if (response.statusCode.toString() == 201.toString()) {
      Map<String, dynamic> decoded =
          await json.decode(response.body)['data']["question"];
      print("decoded: $decoded");
      QuestionDto questionDto = QuestionDto.fromJson(decoded);
      print("decoding sucess");
      return questionDto;
    } else {
      throw Exception('Failed to create question');
    }
  }

  Future<QuestionDto> updateQuestion(
      QuestionFormDto questionFormDto, String questionId) async {
    print("provider");
    print("questionId: $questionId");
    print("questionFormDto: ${questionFormDto.toJson()}");
    print("another");
    var response = await _httpClient.patch('questions/6448f615d561de32dc337d5e',
        body: json.encode(questionFormDto.toJson()));
    print("response: ${response.body}");

    var decoded = await jsonDecode(response.body)['data']['question'];
    print("decoded: $decoded");
    QuestionDto questionDto = QuestionDto.fromJson(decoded);
    print("decoding sucess");
    if (response.statusCode.toString() == 200.toString()) {
      return questionDto;
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
    try {
      int timeoutDurINSecs = 5;
      var timeout = Duration(seconds: timeoutDurINSecs);
      print("fetching questions");
      var response = await _httpClient
          .get('questions?userId=6448f615d561de32dc337d5e')
          .timeout(timeout);
      //print print
      print("res");
      var decoded = await jsonDecode(response.body);
      print("decoded: $decoded");

      if (response.statusCode.toString() == 200.toString()) {
        var questionsLst = decoded["data"]["questions"];
        print("questionsLst: $questionsLst");

        var questionLstDto =
            (questionsLst as List).map((e) => QuestionDto.fromJson(e)).toList();
        print("success");
        return questionLstDto;
      } else {
        throw Exception('Failed to get questions');
      }
    } catch (_) {
      throw CustomTimeoutException();
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
    var userId = '6448f5ead561de32dc337d5b';
    var body = json.encode({"userId": userId});
    print("about like");
    var response = await _httpClient.post('questions/upvote/$id', body: body);
    var decoded = await jsonDecode(response.body)["data"]["question"];
    print("decoded: $decoded");
    print("like sucess");

    if (response.statusCode.toString() == 200.toString()) {
      print("in here status");
      try {
        return QuestionDto.fromJson(decoded);
      } catch (e) {
        print("error: $e");
        throw Exception('Failed to upvote question');
      }
    } else {
      throw Exception('Failed to upvote question');
    }
  }

  Future<QuestionDto> downvoteQuestion(String id) async {
    var user = '6448f5ead561de32dc337d5b';
    var body = json.encode({"userId": user});
    print(body);
    var response = await _httpClient.post('questions/downvote/$id', body: body);
    var decoded = await jsonDecode(response.body)["data"]["question"];
    print("decoded: $decoded");

    if (response.statusCode.toString() == 200.toString()) {
      print("in status");
      return QuestionDto.fromJson(decoded);
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
      author: AuthorDto.fromJson(decoded['author']),
      answers: decoded['answers'] as List<String>,
      anonymous: decoded['anonymous'],
      createdAt: DateTime.parse(decoded["createdAt"]),
      updatedAt: DateTime.parse(decoded["updatedAt"]),
      likes: decoded['likes'] as List<String>,
      dislikes: decoded['dislikes'] as List<String>,
    );
    return questionDto;
  }
}
