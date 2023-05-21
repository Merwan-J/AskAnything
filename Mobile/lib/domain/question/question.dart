import 'package:askanything/domain/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'question.freezed.dart';

@freezed
class Question with _$Question {
  const factory Question({
    required String id,
    required String title,
    required String description,
    required User author,
    required bool anonymous,
    required List<String> answers,
    required String topic,
    required List<String> likes,
    required List<String> dislikes,
    String? image,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Question;
}
