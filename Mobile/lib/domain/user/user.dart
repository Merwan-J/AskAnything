import 'package:askanything/infrastructure/answer/answer_dto.dart';
import 'package:askanything/infrastructure/question/question_dto.dart';
import 'package:flutter/foundation.dart';

class User {
  final String id;
  final String name;
  final String email;
  final String role;
  final String password;
  final String? profilePic; // Added required modifier here
  final List<QuestionDto> questionIds;
  final List<AnswerDto> answerIds;
  final int reputation;
  final int likes;
  final int dislikes;
  final List<dynamic> bookmarks;
  final List<String> followers;
  final List<String> followings;
  final DateTime createdAt;
  final DateTime updatedAt;

  User(
      {required this.id,
      required this.name,
      required this.email,
      required this.password,
      required this.role,
      this.profilePic,
      this.questionIds = const [],
      this.answerIds = const [],
      this.reputation = 0,
      this.likes = 0,
      this.dislikes = 0,
      this.bookmarks = const [],
      this.followers = const [],
      this.followings = const [],
      required this.createdAt,
      required this.updatedAt});

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email': email,
        'role': role,
        'password': password,
        'profilePic': profilePic,
        'questionIds': questionIds,
        'answerIds': answerIds,
        'reputation': reputation,
        'likes': likes,
        'dislikes': dislikes,
        'bookmarks': bookmarks,
        'followers': followers,
        'followings': followings,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}
