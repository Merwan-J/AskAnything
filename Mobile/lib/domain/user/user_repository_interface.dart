import 'package:askanything/domain/user/user.dart';
import 'package:askanything/domain/user/user_failure.dart';
import 'package:dartz/dartz.dart';

abstract class IUserRepository {
  Future<Either<UserFailure, User>> getUserById(String id);
  Future<Either<UserFailure, User>> createUser(User user);
  Future<Either<UserFailure, User>> updateUser(User user);
  Future<Either<UserFailure, void>> deleteUser(String id);
  Future<Either<UserFailure, List<User>>> getAllUsers();
  Future<Either<UserFailure, void>> followUser(
      String followerId, String followingId);
  Future<Either<UserFailure, void>> unfollowUser(
      String followerId, String followingId);
  Future<Either<UserFailure, List<User>>> getFollowers(String userId);
  Future<Either<UserFailure, List<User>>> getFollowings(String userId);
}
