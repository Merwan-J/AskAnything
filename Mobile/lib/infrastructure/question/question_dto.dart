import 'dart:convert';

import 'package:askanything/domain/question/question.dart';
import 'package:askanything/infrastructure/user/author_dto.dart';

class QuestionDto {
  final String id;
  final String title;
  final String description;
  final AuthorDto author;
  final bool anonymous;
  final List<String> answers;
  final String topic;
  final List<String> likes;
  final List<String> dislikes;
  final String? image;
  final DateTime createdAt;
  final DateTime updatedAt;

  QuestionDto({
    required this.id,
    required this.title,
    required this.description,
    required this.author,
    required this.anonymous,
    required this.answers,
    required this.topic,
    required this.likes,
    required this.dislikes,
    this.image,
    required this.createdAt,
    required this.updatedAt,
  });

  factory QuestionDto.fromJson(Map<String, dynamic> json) {
    return QuestionDto(
      id: json['_id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      author: AuthorDto.fromJson(json['author']),
      anonymous: json['anonymous'] as bool,
      answers:
          (json['answers'] as List<dynamic>).map((e) => e as String).toList(),
      topic: json['topic'] as String,
      likes: (json['likes'] as List<dynamic>).map((e) => e as String).toList(),
      dislikes:
          (json['dislikes'] as List<dynamic>).map((e) => e as String).toList(),
      image: json['image'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'author': author,
      'anonymous': anonymous,
      'answers': answers,
      'topic': topic,
      'likes': likes,
      'dislikes': dislikes,
      'image': image,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }

  Question toQuestion() {
    return Question(
      id: id,
      title: title,
      description: description,
      author: author,
      anonymous: anonymous,
      answers: answers,
      topic: topic,
      likes: likes,
      dislikes: dislikes,
      image: image,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  Map<String, dynamic> toJsonForDb() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'author': author.toJsonString(),
      'anonymous': anonymous,
      'answers': answers,
      'topic': topic,
      'likes': likes.join(', '),
      'dislikes': dislikes.join(', '),
      'image': image,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }

  factory QuestionDto.fromjsonForDb(Map<String, dynamic> json) {
    return QuestionDto(
      id: json['id'] as String? ?? '',
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      author: AuthorDto.fromJsonString(json['author'] as String? ?? ''),
      anonymous: json['anonymous'] == 0 ? false : true,
      answers: (json['answers'].toString()).split(', '),
      topic: json['topic'] as String? ?? '',
      likes: (json['likes'] as String? ?? '').split(', '),
      dislikes: (json['dislikes'] as String? ?? '').split(', '),
      image: null,
      createdAt: DateTime.parse(json['createdAt'] as String? ?? ''),
      updatedAt: DateTime.parse(json['updatedAt'] as String? ?? ''),
    );
  }
  String toStringJson() {
    return jsonEncode(toJsonForDb());
  }
}
