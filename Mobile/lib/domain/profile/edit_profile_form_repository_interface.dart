import 'package:dartz/dartz.dart';

import '../user/user.dart';
import 'edit_profile_failure.dart';

abstract class IEditProfileFormRepository {
  Future<Either<EditProfileFailure, User>> getProfile(String userId);
  Future<Either<EditProfileFailure, Unit>> updateProfile(User user);
  Future<Either<EditProfileFailure, Unit>> deleteProfile(String userId);
}
