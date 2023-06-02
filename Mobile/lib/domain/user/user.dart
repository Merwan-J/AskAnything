import 'package:flutter/foundation.dart';

class User {
  final String id;
  final String name;
  final String email;
  final String password;
  final String? profilePic; // Added required modifier here
  final List<String> questionIds;
  final List<String> answerIds;
  final int reputation;
  final int likes;
  final int dislikes;
  final List<String> bookmarks;
  final List<String> followers;
  final List<String> followings;
  final DateTime createdAt;
  final DateTime updatedAt;

  User(
      {required this.id,
      required this.name,
      required this.email,
      required this.password,
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
