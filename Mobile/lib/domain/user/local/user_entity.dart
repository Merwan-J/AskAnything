import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_entity.freezed.dart';
part 'user_entity.g.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    required String id,
    required String name,
    required String email,
    required String password,
    required String profilePic,
    required List<String> questionIds,
    required List<String> answerIds,
    required int reputation,
    required int likes,
    required int dislikes,
    required List<String> bookmarks,
    required List<String> followers,
    required List<String> followings,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _UserEntity;

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);
}
