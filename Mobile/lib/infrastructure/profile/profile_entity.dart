import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/profile/profile.dart';

part 'profile_entity.freezed.dart';

part 'profile_entity.g.dart';

@freezed
class ProfileEntity with _$ProfileEntity {
  const factory ProfileEntity({
    required String name,
    required String profilePicture,
    required int reputation,
    required List<String> following,
    required List<String> followers,
    required List<String> questions,
    required List<String> answers,
  }) = _ProfileEntity;

  factory ProfileEntity.fromJson(Map<String, dynamic> json) =>
      _$ProfileEntityFromJson(json);
}

extension ProfileEntityX on ProfileEntity {
  Profile toProfile() {
    return Profile(
      name: name,
      profilePicture: profilePicture,
      reputation: reputation,
      following: following,
      followers: followers,
      questions: questions,
      answers: answers,
    );
  }
}
