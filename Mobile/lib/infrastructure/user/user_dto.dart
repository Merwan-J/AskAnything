import 'dart:convert';

import 'package:askanything/infrastructure/answer/answer_dto.dart';
import 'package:askanything/infrastructure/question/question_dto.dart';
import 'package:equatable/equatable.dart';

class UserDTO extends Equatable {
  final String id;
  final String name;
  final String email;
  final String password;
  final String profilePic;
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

  const UserDTO({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
    this.profilePic = '',
    required this.questionIds,
    required this.answerIds,
    required this.reputation,
    required this.likes,
    required this.dislikes,
    required this.bookmarks,
    required this.followers,
    required this.followings,
    required this.createdAt,
    required this.updatedAt,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        email,
        password,
        profilePic,
        questionIds,
        answerIds,
        reputation,
        likes,
        dislikes,
        bookmarks,
        followers,
        followings,
        createdAt,
        updatedAt,
      ];

  factory UserDTO.fromJson(Map<String, dynamic> json) {
    return UserDTO(
      id: json['_id'] != null ? json['_id'].toString() : '',
      name: json['name'] != null ? json['name'].toString() : '',
      email: json['email'] != null ? json['email'].toString() : '',
      password: json['password'] != null ? json['password'].toString() : '',
      profilePic:
          json['profilePic'] != null ? json['profilePic'].toString() : '',
      questionIds: json['questions'] != null
          ? (json['questions'] as List<dynamic>)
              .map((question) => QuestionDto.fromJson(question))
              .toList()
          : [],
      answerIds: json['answers'] != null
          ? (json['answers'] as List<dynamic>)
              .map((answer) => AnswerDto.fromJson(answer))
              .toList()
          : [],
      reputation: json['reputation'] ?? 0,
      likes: json['likes'] ?? 0,
      dislikes: json['dislikes'] ?? 0,
      bookmarks: json['bookmarks'] ?? [],
      followers: json['followers'] != null
          ? (json['followers'] as List<dynamic>)
              .map((e) => e.toString())
              .toList()
          : [],
      followings: json['following'] != null
          ? (json['following'] as List<dynamic>)
              .map((e) => e.toString())
              .toList()
          : [],
      createdAt: json['createdAt'] != null
          ? DateTime.parse(json['createdAt'])
          : DateTime.now(),
      updatedAt: json['updatedAt'] != null
          ? DateTime.parse(json['updatedAt'])
          : DateTime.now(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'name': name,
      'email': email,
      'password': password,
      'profilePic': profilePic,
      'questions': questionIds,
      'answers': answerIds,
      'reputation': reputation,
      'likes': likes,
      'dislikes': dislikes,
      'bookmarks': bookmarks,
      'followers': followers,
      'following': followings,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }

  Map<String, dynamic> toJsonForDb() {
    print("trying to map");

    var question = questionIds.map((q) => q.toStringJson()).toList();
    var answer = answerIds.map((q) => q.toStringJson()).toList();

    print(question);
    print(answer);

    return {
      'id': id.toString(),
      'name': name.toString(),
      'email': email.toString(),
      'password': password.toString(),
      'profilePic': profilePic.toString(),
      'questionIds': question.join(','),
      'answerIds': answer.join(','),
      'reputation': reputation.toString(),
      'likes': likes.toString(),
      'dislikes': dislikes.toString(),
      'bookmarks': bookmarks.join(','),
      'followers': followers.join(','),
      'followings': followings.join(','),
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }

  factory UserDTO.fromJsonForDb(Map<String, dynamic> json) {
    print("trying to map for db from json");
    print(json);
    var question = (json['questionIds'] as String? ?? '').split(',');
    var questions = question
        .where((q) => q.isNotEmpty) // Add this line to filter out empty strings
        .map((q) => QuestionDto.fromjsonForDb(jsonDecode(q)))
        .toList();
    var answerIds = (json['answerIds'] as String? ?? '')
        .split(',')
        .where((a) => a.isNotEmpty) // Add this line to filter out empty strings
        .map((a) => AnswerDto.fromJsonForDb(jsonDecode(a)))
        .toList();

    print("answerIds: $answerIds");
    print("questions: $questions");

    return UserDTO(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      email: json['email'] as String? ?? '',
      password: json['password'] as String? ?? '',
      profilePic: json['profilePic'] as String? ?? '',
      questionIds: questions,
      answerIds: answerIds,
      reputation: int.tryParse(json['reputation'].toString()) ?? 0,
      likes: int.tryParse(json['likes'].toString()) ?? 0,
      dislikes: int.tryParse(json['dislikes'].toString()) ?? 0,
      bookmarks: (json['bookmarks'] as String? ?? '').split(','),
      followers: (json['followers'] as String? ?? '').split(','),
      followings: (json['followings'] as String? ?? '').split(','),
      createdAt: DateTime.parse(json['createdAt'] as String? ?? ''),
      updatedAt: DateTime.parse(json['updatedAt'] as String? ?? ''),
    );
  }
}
