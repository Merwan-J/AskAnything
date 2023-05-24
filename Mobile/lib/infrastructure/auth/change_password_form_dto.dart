import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_password_form_dto.freezed.dart';
part 'change_password_form_dto.g.dart';

@freezed
class ChangePasswordFormDto with _$ChangePasswordFormDto {
  factory ChangePasswordFormDto({
    required String name,
    required String oldPassword,
    required String newPassword,
    required String confirmPassword,
  }) = _ChangePasswordFormDto;

  factory ChangePasswordFormDto.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordFormDtoFromJson(json);
}
