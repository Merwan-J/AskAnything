import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDTO with _$UserDTO {
  const factory UserDTO({
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
    required Map<String, List<String>> bookmarks,
    required List<String> followers,
    required List<String> followings,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _UserDTO;

  factory UserDTO.fromJson(Map<String, dynamic> json) =>
      _$UserDTOFromJson(json);
}
