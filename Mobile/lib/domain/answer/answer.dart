import 'dart:core';
import 'dart:core';

import 'package:askanything/infrastructure/user/author_dto.dart';

class Answer {
  final String id;
  final String text;
  final String image;
  final List<dynamic> likes;
  final List<dynamic> dislikes;
  final AuthorDto author; //TODO: Change to User
  final bool anonymous;
  final String question; //TODO: Change to Question
  final DateTime createdAt;
  final DateTime updatedAt;

  Answer({
    required this.id,
    required this.text,
    required this.image,
    required this.likes,
    required this.dislikes,
    required this.author,
    required this.anonymous,
    required this.question,
    required this.createdAt,
    required this.updatedAt,
  });
}
