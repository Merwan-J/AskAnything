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
  final Map<String, dynamic> bookmarks;
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
      bookmarks: json['bookmarks'] != null
          ? Map<String, dynamic>.from(json['bookmarks'])
          : {},
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
}
