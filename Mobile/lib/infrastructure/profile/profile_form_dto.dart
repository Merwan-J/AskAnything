import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'profile_form_dto.freezed.dart';
part 'profile_form_dto.g.dart';

@freezed
class ProfileFormDto with _$ProfileFormDto {
  const factory ProfileFormDto({
    required String email,
    required String ProfilePicture,
    required String userName, //TODO: Change to image
  }) = _ProfileFormDto;

  factory ProfileFormDto.fromJson(Map<String, dynamic> json) =>
      _$ProfileFormDtoFromJson(json);
}
