import 'package:askanything/domain/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'question.freezed.dart';
part 'question.g.dart';

@freezed
class Question with _$Question {
  const factory Question({
    required String id,
    required String title,
    required String description,
    // TODO: Replace string with User model class
    required String author,
    required bool anonymous,
    // TODO: Replace string with Answer model class
    required List<dynamic> answers,
    required String topic,
    required List<dynamic> likes,
    required List<dynamic> dislikes,
    String? image,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Question;

  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);
}
