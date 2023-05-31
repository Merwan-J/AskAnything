import 'package:askanything/domain/user/user.dart';
import 'package:askanything/infrastructure/user/author_dto.dart';

class Question {
  final String id;
  final String title;
  final String description;
  final AuthorDto author;
  final bool anonymous;
  final List<dynamic> answers;
  final String topic;
  final List<dynamic> likes;
  final List<dynamic> dislikes;
  final String? image;
  final DateTime createdAt;
  final DateTime updatedAt;

  Question({
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

  factory Question.fromJson(Map<String, dynamic> json) {
    return Question(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      author: AuthorDto.fromJson(json['author']),
      anonymous: json['anonymous'],
      answers: json['answers'],
      topic: json['topic'],
      likes: json['likes'],
      dislikes: json['dislikes'],
      image: json['image'],
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
    );
  }
}
