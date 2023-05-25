import 'package:dartz/dartz.dart';

import '../../infrastructure/profile/profile_form_dto.dart';
// import '../user/user.dart';
import 'edit_profile_failure.dart';
// import 'edit_profile_form.dart';
import 'profile.dart';

abstract class IEditProfileFormRepository {
  Future<Either<EditProfileFailure, Profile>> getProfile(String userId);
  Future<Either<EditProfileFailure, Profile>> updateProfile(
      {required ProfileFormDto profileForm});
  Future<Either<EditProfileFailure, Unit>> deleteAccount(String userId);
}
