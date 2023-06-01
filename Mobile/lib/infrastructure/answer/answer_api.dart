import "dart:convert";
import "package:askanything/infrastructure/answer/answer_dto.dart";
import "package:askanything/infrastructure/answer/answer_form_dto.dart";
import "package:askanything/util/custom_http_client.dart";

class AnswerAPI {
  CustomHttpClient _customHttpClient;

  AnswerAPI(this._customHttpClient);

  Future<AnswerDto> createAnswer(AnswerFormDto answerFormDto) async {
    var answer = await _customHttpClient.post("answers",
        body: json.encode(answerFormDto.toJson()));
    print(answer.body);
    var temp = json.decode(answer.body);

    var tempJson = temp["data"]["answer"];
    final answerDto = AnswerDto(
      id: tempJson['_id'],
      text: tempJson['text'],
      image: tempJson['image'],
      likes: List<dynamic>.from(tempJson['likes']),
      dislikes: List<dynamic>.from(tempJson['dislikes']),
      author: tempJson['author'],
      questionId: tempJson['question'],
      anonymous: tempJson['anonymous'],
      createdAt: DateTime.parse(tempJson['createdAt']),
      updatedAt: DateTime.parse(tempJson['updatedAt']),
    );

    if (answer.statusCode == 201) {
      return answerDto;
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
    var answer = await _customHttpClient.put("answers/$id",
        body: json.encode({"text": text}));

    if (answer.statusCode == 200) {
      return AnswerDto.fromJson(jsonDecode(answer.body));
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

  //TODO: Add like and dislike
}
