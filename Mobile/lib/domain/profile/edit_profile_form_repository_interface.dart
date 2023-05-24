import 'package:dartz/dartz.dart';

import '../user/user.dart';
import 'edit_profile_failure.dart';
import 'edit_profile_form.dart';

abstract class IEditProfileFormRepository {
  Future<Either<EditProfileFailure, User>> getProfile(String userId);
  Future<Either<EditProfileFailure, Unit>> updateProfile(
      {required EditProfileForm profileForm});
  Future<Either<EditProfileFailure, Unit>> deleteProfile(String userId);
}
