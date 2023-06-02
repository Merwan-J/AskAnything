import 'dart:convert';

import 'package:askanything/domain/answer/answer.dart';
import 'package:askanything/infrastructure/user/author_dto.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class AnswerDto {
  final String id;
  final String text;
  final String image;
  final List<dynamic> likes;
  final List<dynamic> dislikes;
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
      likes: json['likes'] as List<dynamic>,
      dislikes: json['dislikes'] as List<dynamic>,
      author: json['author'] ?? '',
      questionId: json['questionId'] ?? '',
      anonymous: json['anonymous'] ?? false,
      createdAt: DateTime.parse(json['createdAt'] ?? ''),
      updatedAt: DateTime.parse(json['updatedAt'] ?? ''),
    );
  }

  Map<String, dynamic> toJsonForDb() {
    return {
      'id': id.toString(),
      'text': text.toString(),
      'image': image.toString(),
      'likes': likes.join(','),
      'dislikes': dislikes.join(','),
      'author': author.toStringJson(),
      'questionId': questionId.toString(),
      'anonymous': anonymous.toString(),
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }

  factory AnswerDto.fromJsonForDb(Map<String, dynamic> json) {
    return AnswerDto(
      id: json['_id'] as String? ?? '',
      text: json['text'] as String? ?? '',
      image: json['image'] as String? ?? '',
      likes: (json['likes'] as String? ?? '').split(','),
      dislikes: (json['dislikes'] as String? ?? '').split(','),
      author: AuthorDto.fromJsonString(json['author'] as String? ?? '{}'),
      questionId: json['questionId'] as String? ?? '',
      anonymous: json['anonymous'] as bool? ?? false,
      createdAt: DateTime.parse(json['createdAt'] as String? ?? ''),
      updatedAt: DateTime.parse(json['updatedAt'] as String? ?? ''),
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

  String toStringJson() {
    return jsonEncode(toJsonForDb());
  }
}
