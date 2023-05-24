// ignore_for_file: invalid_annotation_target
import 'package:askanything/domain/auth/email.dart';
import 'package:askanything/domain/auth/name.dart';
import 'package:askanything/domain/auth/password.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_form_dto.freezed.dart';
part 'signup_form_dto.g.dart';

@freezed
class SignUpFormDto with _$SignUpFormDto {
  @JsonSerializable(explicitToJson: true)
  factory SignUpFormDto({
    @JsonKey(fromJson: _nameFromJson, toJson: _nameToJson) required Name name,
    @JsonKey(fromJson: _emailFromJson, toJson: _emailToJson)
    required EmailAddress emailAddress,
    @JsonKey(fromJson: _passwordFromJson, toJson: _passwordToJson)
    required Password password,
    @JsonKey(fromJson: _passwordFromJson, toJson: _passwordToJson)
    required Password confirmPassword,
  }) = _SignUpFormDto;

  factory SignUpFormDto.fromJson(Map<String, dynamic> json) =>
      _$SignUpFormDtoFromJson(json);
}

Name _nameFromJson(Map<String, dynamic> json) {
  return Name.fromJson(json);
}

Map<String, dynamic> _nameToJson(Name name) {
  return name.toJson();
}

EmailAddress _emailFromJson(Map<String, dynamic> json) {
  return EmailAddress.fromJson(json);
}

Map<String, dynamic> _emailToJson(EmailAddress email) {
  return email.toJson();
}

Password _passwordFromJson(Map<String, dynamic> json) {
  return Password.fromJson(json);
}

Map<String, dynamic> _passwordToJson(Password password) {
  return password.toJson();
}
