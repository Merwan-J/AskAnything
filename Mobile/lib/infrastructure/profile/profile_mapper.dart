import '../../domain/profile/profile.dart';
import './profile_dto.dart';

extension ProfileMapper on ProfileDto {
  Object toProfile() {
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
