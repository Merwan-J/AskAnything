import 'package:askanything/domain/user/user_form.dart';
import 'package:askanything/domain/user/user_repository_interface.dart';
import 'package:askanything/infrastructure/user/user_mapper.dart';
import 'package:dartz/dartz.dart';
import 'package:askanything/domain/user/user.dart';
import 'package:askanything/domain/user/user_failure.dart';
import 'package:askanything/infrastructure/user/user_api.dart';

class UserRepository implements IUserRepository {
  final UserApi _userApi;

  UserRepository(this._userApi);

  @override
  Future<Either<UserFailure, User>> getUserById(String id) async {
    try {
      final userDto = await _userApi.getUserById(id);
      final user = userDto.toModel();
      return Right(user);
    } catch (e) {
      return Left(UserFailure.unexpectedError());
    }
  }

  @override
  Future<Either<UserFailure, User>> createUser(UserForm userForm) async {
    try {
      final userFormDto = userForm.toFormDTO();
      final createdUserDto = await _userApi.createUser(userFormDto);
      final createdUser = createdUserDto.toModel();
      return Right(createdUser);
    } catch (e) {
      return Left(UserFailure.unexpectedError());
    }
  }

  @override
  Future<Either<UserFailure, User>> updateUser(
      UserForm userForm, String id) async {
    try {
      final userFormDto = userForm.toFormDTO();
      final updatedUserDto = await _userApi.updateUser(userFormDto, id);
      final updatedUser = updatedUserDto.toModel();
      return Right(updatedUser);
    } catch (e) {
      return Left(UserFailure.unexpectedError());
    }
  }

  @override
  Future<Either<UserFailure, void>> deleteUser(String id) async {
    try {
      await _userApi.deleteUser(id);
      return Right(null);
    } catch (e) {
      return Left(UserFailure.unexpectedError());
    }
  }

  @override
  Future<Either<UserFailure, List<User>>> getAllUsers() async {
    try {
      final userListDto = await _userApi.getUsers();
      final userList = userListDto.map((userDto) => userDto.toModel()).toList();
      return Right(userList);
    } catch (e) {
      return Left(UserFailure.unexpectedError());
    }
  }

  @override
  Future<Either<UserFailure, void>> followUser(
      String followerId, String followingId) async {
    try {
      await _userApi.followUser(followerId, followingId);
      return Right(null);
    } catch (e) {
      return Left(UserFailure.unexpectedError());
    }
  }

  @override
  Future<Either<UserFailure, void>> unfollowUser(
      String followerId, String followingId) async {
    try {
      await _userApi.unfollowUser(followerId, followingId);
      return Right(null);
    } catch (e) {
      return Left(UserFailure.unexpectedError());
    }
  }

  @override
  Future<Either<UserFailure, List<User>>> getFollowers(String userId) async {
    try {
      final followerListDto = await _userApi.getFollowers(userId);
      final followerList =
          followerListDto.map((followerDto) => followerDto.toModel()).toList();
      return Right(followerList);
    } catch (e) {
      return Left(UserFailure.unexpectedError());
    }
  }

  @override
  Future<Either<UserFailure, List<User>>> getFollowings(String userId) async {
    try {
      final followingListDto = await _userApi.getFollowings(userId);
      final followingList = followingListDto
          .map((followingDto) => followingDto.toModel())
          .toList();
      return Right(followingList);
    } catch (e) {
      return Left(UserFailure.unexpectedError());
    }
  }

  @override
  Future<Either<UserFailure, List<User>>> getAdminUsers() async {
    try {
      final adminListDto = await _userApi.getAdminUsers();
      final adminList =
          adminListDto.map((adminDto) => adminDto.toModel()).toList();
      return Right(adminList);
    } catch (e) {
      return Left(UserFailure.unexpectedError());
    }
  }
}
