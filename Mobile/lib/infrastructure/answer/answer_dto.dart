import 'package:askanything/domain/answer/answer.dart';
import 'package:askanything/infrastructure/user/author_dto.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class AnswerDto {
  final String id;
  final String text;
  final String image;
  final List<String> likes;
  final List<String> dislikes;
  final AuthorDto author;
  final String questionId;
  final bool anonymous;
  final DateTime createdAt;
  final DateTime updatedAt;

  AnswerDto({
    required this.id,
    required this.text,
    required this.image,
    required this.likes,
    required this.dislikes,
    required this.author,
    required this.questionId,
    required this.anonymous,
    required this.createdAt,
    required this.updatedAt,
  });

  factory AnswerDto.fromJson(Map<String, dynamic> json) {
    return AnswerDto(
      id: json['id'] ?? '',
      text: json['text'] ?? '',
      image: json['image'] ?? '',
      likes: (json['likes'] as List<dynamic>).map((e) => e.toString()).toList(),
      dislikes:
          (json['dislikes'] as List<dynamic>).map((e) => e.toString()).toList(),
      author: AuthorDto.fromJson(json['author']),
      questionId: json['questionId'] ?? '',
      anonymous: json['anonymous'] ?? false,
      createdAt: DateTime.parse(json['createdAt'] ?? ''),
      updatedAt: DateTime.parse(json['updatedAt'] ?? ''),
    );
  }

  Answer toAnswer() {
    return Answer(
      id: id,
      text: text,
      image: image,
      likes: likes,
      dislikes: dislikes,
      author: author,
      anonymous: anonymous,
      question: questionId,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
