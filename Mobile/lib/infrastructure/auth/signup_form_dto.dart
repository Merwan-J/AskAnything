// ignore_for_file: invalid_annotation_target
import 'package:askanything/domain/auth/email.dart';
import 'package:askanything/domain/auth/name.dart';
import 'package:askanything/domain/auth/password.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_form_dto.freezed.dart';
part 'signup_form_dto.g.dart';

@freezed
class SignUpFormDto with _$SignUpFormDto {
  const factory SignUpFormDto({
    required String name,
    required String emailAddress,
    required String password,
    required String confirmPassword,
  }) = _SignUpFormDto;

  factory SignUpFormDto.fromJson(Map<String, dynamic> json) =>
      _$SignUpFormDtoFromJson(json);
}
