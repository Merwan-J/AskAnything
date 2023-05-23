import 'package:askanything/domain/user/user.dart';
import 'package:askanything/domain/user/user_failure.dart';
import 'package:askanything/infrastructure/user/user_api.dart';
import 'package:askanything/infrastructure/user/user_dto.dart';
import 'package:askanything/infrastructure/user/user_form_dto.dart';
import 'package:askanything/infrastructure/user/user_mapper.dart';
import 'package:dartz/dartz.dart';

class UserRepository {
  final UserApi _userApi;

  UserRepository(this._userApi);

  Future<Either<UserFailure, User>> createUser(UserFormDTO userForm) async {
    try {
      final userDto = await _userApi.createUser(userForm);
      final createdUser = UserMapper.fromDTO(userDto);
      return Right(createdUser);
    } catch (e) {
      return Left(UserFailure.unexpectedError());
    }
  }

  Future<Either<UserFailure, User>> getUserById(String id) async {
    try {
      final userDto = await _userApi.getUserById(id);
      final user = UserMapper.fromDTO(userDto);
      return Right(user);
    } catch (e) {
      return Left(UserFailure.unexpectedError());
    }
  }

  Future<Either<UserFailure, Unit>> updateUser(User user) async {
    try {
      final userDto = UserMapper.toDTO(user);
      await _userApi.updateUser(userDto);
      return Right(unit);
    } catch (e) {
      return Left(UserFailure.unexpectedError());
    }
  }

  Future<Either<UserFailure, Unit>> deleteUser(String id) async {
    try {
      await _userApi.deleteUser(id);
      return Right(unit);
    } catch (e) {
      return Left(UserFailure.unexpectedError());
    }
  }

  Future<Either<UserFailure, List<User>>> getUsers() async {
    try {
      final userDtos = await _userApi.getUsers();
      final users =
          userDtos.map((userDto) => UserMapper.fromDTO(userDto)).toList();
      return Right(users);
    } catch (e) {
      return Left(UserFailure.unexpectedError());
    }
  }

  Future<Either<UserFailure, Unit>> followUser(
      String followerId, String followingId) async {
    try {
      await _userApi.followUser(followerId, followingId);
      return Right(unit);
    } catch (e) {
      return Left(UserFailure.unexpectedError());
    }
  }

  Future<Either<UserFailure, Unit>> unfollowUser(
      String followerId, String followingId) async {
    try {
      await _userApi.unfollowUser(followerId, followingId);
      return Right(unit);
    } catch (e) {
      return Left(UserFailure.unexpectedError());
    }
  }

  Future<Either<UserFailure, List<User>>> getFollowers(String userId) async {
    try {
      final userDtos = await _userApi.getFollowers(userId);
      final users =
          userDtos.map((userDto) => UserMapper.fromDTO(userDto)).toList();
      return Right(users);
    } catch (e) {
      return Left(UserFailure.unexpectedError());
    }
  }

  Future<Either<UserFailure, List<User>>> getFollowings(String userId) async {
    try {
      final userDtos = await _userApi.getFollowings(userId);
      final users =
          userDtos.map((userDto) => UserMapper.fromDTO(userDto)).toList();
      return Right(users);
    } catch (e) {
      return Left(UserFailure.unexpectedError());
    }
  }
}
