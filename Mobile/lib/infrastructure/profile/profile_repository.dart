import 'package:askanything/domain/profile/edit_profile_failure.dart';

import 'package:askanything/domain/profile/edit_profile_form.dart';

import 'package:askanything/domain/profile/profile.dart';
import 'package:askanything/infrastructure/profile/profile_dto.dart';
import 'package:askanything/infrastructure/profile/profile_mapper.dart';

import 'package:dartz/dartz.dart';

import '../../domain/profile/edit_profile_form_repository_interface.dart';
import 'profile_api.dart';
import 'profile_form_dto.dart';

class ProfileRepository implements IEditProfileFormRepository {
  ProfileApi _profileAPI;

  ProfileRepository(this._profileAPI);

  @override
  Future<Either<EditProfileFailure, Unit>> deleteAccount(String userId) async {
    try {
      await _profileAPI.deleteAccount(userId);
      return right(unit);
    } catch (e) {
      return left(const EditProfileFailure.serverError());
    }
  }

  @override
  Future<Either<EditProfileFailure, Profile>> getProfile(String userId) async {
    try {
      var profile = await _profileAPI.getProfile();
      return right(profile.toProfile());
    } catch (e) {
      return left(const EditProfileFailure.serverError());
    }
  }

  Future<Either<EditProfileFailure, Profile>> updateProfile(
      {required EditProfileForm profileForm}) async {
    try {
      print("before update profile repository update profile");
      final profileFormDto = ProfileFormDto(
        name: profileForm.name,
        email: profileForm.email,
        image: "string",
      );
      // print()
      final profileDto = await _profileAPI.updateProfile(
        profileForm: profileFormDto.toEditProfileForm(),
      );
      print("repository success1");
      final profile = profileDto.toProfile();
      print("repository success2");
      return right(profile);
    } catch (e) {
      print(e);
      return left(const EditProfileFailure.serverError());
    }
  }
}
