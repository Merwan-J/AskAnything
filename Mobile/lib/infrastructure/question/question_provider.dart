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

  Future<QuestionDto> createQuestion(
      QuestionFormDto questionFormDto, authorId) async {
    var response = await _httpClient.post('questions',
        body: json.encode(questionFormDto.toJson()..['author'] = authorId));

    print(response.body);

    if (response.statusCode.toString() == 201.toString()) {
      Map<String, dynamic> decoded =
          await json.decode(response.body)['data']["question"];
      QuestionDto questionDto = QuestionDto.fromJson(decoded);

      return questionDto;
    } else {
      throw Exception('Failed to create question');
    }
  }

  Future<QuestionDto> updateQuestion(
      QuestionFormDto questionFormDto, String questionId) async {
    print("update loading");
    print("questionId: $questionId");
    print(questionFormDto);

    var response = await _httpClient.patch('questions/$questionId',
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
      int timeoutDurINSecs = 10;
      var timeout = Duration(seconds: timeoutDurINSecs);

      var response = await _httpClient.get('questions');
      //print print

      var decoded = await jsonDecode(response.body);

      if (response.statusCode.toString() == 200.toString()) {
        var questionsLst = decoded["data"]["questions"];

        var questionLstDto =
            (questionsLst as List).map((e) => QuestionDto.fromJson(e)).toList();

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

  Future<QuestionDto> upvoteQuestion(String id, String userID) async {
    print("being liked");
    print("here is the id");
    print(id);
    // var userId = '647941adb3ca8dc6c1ac3f77';
    var body = json.encode({"userId": userID});
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

  Future<QuestionDto> downvoteQuestion(String id, String userId) async {
    var user = '647941adb3ca8dc6c1ac3f77';
    var body = json.encode({"userId": userId});
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

  Future<List<QuestionDto>> getPendingQuestions() async {
    var response = await _httpClient.get('questions/pending');

    //print print
    var decoded = await jsonDecode(response.body);
    print(response.statusCode.toString());
    print("decoded: $decoded");

    if (response.statusCode.toString() == 200.toString()) {
      var questionsLst = decoded["data"]["questions"];
      var questionLstDto =
          (questionsLst as List).map((e) => QuestionDto.fromJson(e)).toList();
      return questionLstDto;
    } else {
      throw Exception('Failed to get questions');
    }
  }

  Future<QuestionDto> approveQuestion(String id) async {
    print("in approve api");
    var response = await _httpClient.post('questions/approve/$id');

    if (response.statusCode.toString() == 200.toString()) {
      var decoded = await jsonDecode(response.body)["data"]["question"];
      return QuestionDto.fromJson(decoded);
    } else {
      throw Exception('Failed to approve question');
    }
  }

  Future<QuestionDto> rejectQuestion(String id) async {
    var response = await _httpClient.post('questions/reject/$id');

    if (response.statusCode.toString() == 200.toString()) {
      var decoded = await jsonDecode(response.body)["data"]["question"];
      return QuestionDto.fromJson(decoded);
    } else {
      throw Exception('Failed to reject question');
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
