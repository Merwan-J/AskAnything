import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_form_dto.freezed.dart';
part 'user_form_dto.g.dart';

@freezed
abstract class UserFormDTO with _$UserFormDTO {
  const factory UserFormDTO({
    required String name,
    required String email,
    required String password,
    String? profilePic,
  }) = _UserFormDTO;

  factory UserFormDTO.fromJson(Map<String, dynamic> json) =>
      _$UserFormDTOFromJson(json);
}
