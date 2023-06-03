import "dart:convert";
import "package:askanything/infrastructure/answer/answer_dto.dart";
import "package:askanything/infrastructure/answer/answer_form_dto.dart";
import "package:askanything/infrastructure/user/author_dto.dart";
import "package:askanything/util/custom_http_client.dart";

class AnswerAPI {
  CustomHttpClient _customHttpClient;

  AnswerAPI(this._customHttpClient);

  //here i made it accept a userId

  Future<AnswerDto> createAnswer(
      AnswerFormDto answerFormDto, String userId) async {
    var body = {
      "text": answerFormDto.text,
      "author": userId,
      "question": answerFormDto.question,
    };
    var answer =
        await _customHttpClient.post("answers", body: json.encode(body));

    var decoded = await jsonDecode(answer.body)["data"]["answer"];
    // print("decoded$decoded");

    if (answer.statusCode == 201) {
      return AnswerDto.fromJson(decoded);
    } else {
      throw Exception("Failed to create answer"); //TODO: handle the exceptions
    }
  }

  Future<List<AnswerDto>> getAnswers() async {
    var answers = await _customHttpClient.get("answers");

    if (answers.statusCode == 200) {
      List<dynamic> answersJson = jsonDecode(answers.body);
      return answersJson.map((answer) => AnswerDto.fromJson(answer)).toList();
    } else {
      throw Exception("Failed to load answers"); //TODO: handle the exceptions
    }
  }

  Future<AnswerDto> getAnswerById(String id) async {
    var answer = await _customHttpClient.get("answers/$id");

    if (answer.statusCode == 200) {
      return AnswerDto.fromJson(jsonDecode(answer.body));
    } else {
      throw Exception("Failed to load answer"); //TODO: handle the exceptions
    }
  }

// TODO: use Answer Body Instead of String
  Future<AnswerDto> updateAnswer(
      {required String id, required String text}) async {
    print("updateAnswer api");
    var response = await _customHttpClient.put("answers/$id",
        body: json.encode({"text": text}));
    print(response);

    var decoded = await jsonDecode(response.body)["data"]["answer"];
    print("decoded$decoded");

    if (response.statusCode.toString() == 200.toString()) {
      try {
        return AnswerDto.fromJson(decoded);
      } catch (e) {
        print(e);
        throw (e);
      }
    } else {
      throw Exception("Failed to update answer"); //TODO: handle the exceptions
    }
  }

  Future<void> deleteAnswer(String id) async {
    var answer = await _customHttpClient.delete("answers/$id");

    if (answer.statusCode == 200) {
      return;
    } else {
      throw Exception("Failed to delete answer"); //TODO: handle the exceptions
    }
  }

  Future<List<AnswerDto>> getAnswersByQuestionId(String id) async {
    //TODO: change the url

    var answers = await _customHttpClient.get("answers/question/$id");
    var decoded = await jsonDecode(answers.body)["data"]["answers"];
    print("decoded$decoded");

    if (answers.statusCode.toString() == 200.toString()) {
      print("heree");
      try {
        return List<AnswerDto>.from(decoded.map((a) => AnswerDto.fromJson(a)));
      } catch (e) {
        print(e);
        throw (e);
      }
    } else {
      throw Exception("Failed to load answers"); //TODO: handle the exceptions
    }
  }

  //TODO: Add like and dislike
}
