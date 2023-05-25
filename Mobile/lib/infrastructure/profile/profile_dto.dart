import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'profile_dto.freezed.dart';
part 'profile_dto.g.dart';

@freezed
class ProfileDto with _$ProfileDto {
  const factory ProfileDto({
    required String name,
    required String profilePicture,
    required int reputation,
    required List<String> following,
    required List<String> followers,
    required List<String> questions,
    required List<String> answers,
  }) = _ProfileDto;

  factory ProfileDto.fromJson(Map<String, dynamic> json) =>
      _$ProfileDtoFromJson(json);
}
