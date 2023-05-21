import 'dart:core';
import 'dart:core';

class Answer {
  final int id;
  final String image;
  final List<String> likes;
  final List<String> dislikes;
  final String author; //TODO: Change to User
  final bool anonymous;
  final String question; //TODO: Change to Question
  final DateTime createdAt;
  final DateTime updatedAt;

  Answer({
    required this.id,
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
