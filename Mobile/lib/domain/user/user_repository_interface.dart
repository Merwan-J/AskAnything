import 'package:askanything/domain/user/user.dart';
import 'package:askanything/domain/user/user_failure.dart';
import 'package:askanything/domain/user/user_form.dart';
import 'package:dartz/dartz.dart';

abstract class IUserRepository {
  Future<Either<UserFailure, User>> getUserById(String id);
  Future<Either<UserFailure, User>> createUser(UserForm userForm);
  Future<Either<UserFailure, User>> updateUser(UserForm user, String id);
  Future<Either<UserFailure, void>> deleteUser(String id);
  Future<Either<UserFailure, List<dynamic>>> getAllUsers();
  Future<Either<UserFailure, User>> followUser(
      String followerId, String followingId);
  Future<Either<UserFailure, User>> unfollowUser(
      String followerId, String followingId);
  Future<Either<UserFailure, List<dynamic>>> getFollowers(String userId);
  Future<Either<UserFailure, List<dynamic>>> getFollowings(String userId);
  Future<Either<UserFailure, List<dynamic>>> getAdminUsers();
  Future<Either<UserFailure, User>> promoteUser(String userId);
  Future<Either<UserFailure, User>> demoteUser(String userId);
}
