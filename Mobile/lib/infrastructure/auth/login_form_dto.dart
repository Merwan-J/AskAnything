// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_form_dto.freezed.dart';
part 'login_form_dto.g.dart';

@freezed
class LogInFormDto with _$LogInFormDto {
  @JsonSerializable(explicitToJson: true)
  factory LogInFormDto({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'password') String? password,
  }) = _LogInFormDto;

  factory LogInFormDto.fromJson(Map<String, dynamic> json) =>
      _$LogInFormDtoFromJson(json);
}
