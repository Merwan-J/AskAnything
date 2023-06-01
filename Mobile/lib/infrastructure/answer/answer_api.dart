import "dart:convert";
import "package:askanything/infrastructure/answer/answer_dto.dart";
import "package:askanything/infrastructure/answer/answer_form_dto.dart";
import "package:askanything/infrastructure/user/author_dto.dart";
import "package:askanything/util/custom_http_client.dart";

class AnswerAPI {
  CustomHttpClient _customHttpClient;

  AnswerAPI(this._customHttpClient);

  Future<AnswerDto> createAnswer(AnswerFormDto answerFormDto) async {
    print("answer api");
    var body = {
      "text": answerFormDto.text,
      "author": "644a59d906e58c639150523c",
      "question": "6478b8c7a70dcd58a4690267"
    };
    var answer =
        await _customHttpClient.post("answers", body: json.encode(body));

    var decoded = await jsonDecode(answer.body)["data"]["answer"];
    print("decoded$decoded");

    if (answer.statusCode == 201) {
      try {
        AnswerDto answerDto = AnswerDto(
            id: decoded["_id"] as String,
            text: decoded["text"].toString(),
            image: "" as String,
            likes: (decoded["likes"] as List<dynamic>)
                .map((e) => e.toString())
                .toList(),
            dislikes: (decoded["dislikes"] as List<dynamic>)
                .map((e) => e.toString())
                .toList(),
            author: AuthorDto.fromJson(decoded["author"]),
            questionId: decoded["questionId"] as String,
            anonymous: decoded["author"],
            createdAt: decoded["createdAt"],
            updatedAt: decoded["updatedAt"]);

        return answerDto;
      } catch (e) {
        print(e);
        throw (e);
      }
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
