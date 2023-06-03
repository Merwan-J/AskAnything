import 'package:askanything/Data/Local/local_database/local_storage.dart';
import 'package:askanything/domain/user/user_form.dart';
import 'package:askanything/domain/user/user_repository_interface.dart';
import 'package:askanything/infrastructure/user/user_mapper.dart';
import 'package:askanything/util/custom_timeout.dart';
import 'package:dartz/dartz.dart';
import 'package:askanything/domain/user/user.dart';
import 'package:askanything/domain/user/user_failure.dart';
import 'package:askanything/infrastructure/user/user_api.dart';

class UserRepository implements IUserRepository {
  final UserApi _userApi;
  final DatabaseHelper _databaseHelper = DatabaseHelper.instance;

  UserRepository(this._userApi);
  @override
  Future<Either<UserFailure, User>> addBookmark(
      String userId, String questionId) async {
    print("something");
    print('user repository');
    try {
      final userDto = await _userApi.addBookmark(userId, questionId);

      final user = userDto.toModel();

      return Right(user);
    } catch (e) {
      return const Left(UserFailure.unexpectedError());
    }
  }

  Future<Either<UserFailure, User>> removeBookmark(
      String userId, String questionId) async {
    print("user repo remove");
    print(userId);
    print("question id");
    print(questionId);
    try {
      final userDto = await _userApi.removeBookmark(userId, questionId);

      final user = userDto.toModel();

      return Right(user);
    } catch (e) {
      return Left(UserFailure.unexpectedError());
    }
  }

  @override
  Future<Either<UserFailure, User>> getUserById(String id) async {
    try {
      print("trying to get user");
      final userDto = await _userApi.getUserById(id);
      print(userDto.questionIds);
      try {
        print("entered the hole");
        await _databaseHelper.insertUser(userDto);
        // print("trying to get user db");
        // final userDtodb = await _databaseHelper.getUser(id);
        // print("got user db");
        // print(userDtodb);
      } catch (e) {
        print(e);
      }
      final user = userDto.toModel();
      print(user.questionIds);
      return Right(user);
    } catch (e) {
      print("hey");
      print(e);
      return const Left(UserFailure.unexpectedError());
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
      return const Left(UserFailure.unexpectedError());
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
      return const Left(UserFailure.unexpectedError());
    }
  }

  @override
  Future<Either<UserFailure, void>> deleteUser(String id) async {
    try {
      await _userApi.deleteUser(id);
      return const Right(null);
    } catch (e) {
      return const Left(UserFailure.unexpectedError());
    }
  }

  @override
  Future<Either<UserFailure, List<dynamic>>> getAllUsers() async {
    try {
      final userList = await _userApi.getUsers();
      print(userList);
      print('success in repo ');
      return Right(userList);
    } catch (e) {
      print(e);
      print('error in repo');
      return const Left(UserFailure.unexpectedError());
    }
  }

  @override
  Future<Either<UserFailure, User>> followUser(
      String followerId, String followingId) async {
    try {
      final userDto = await _userApi.followUser(followerId, followingId);
      final user = userDto.toModel();
      return Right(user);
    } catch (e) {
      print(e);
      return const Left(UserFailure.unexpectedError());
    }
  }

  @override
  Future<Either<UserFailure, User>> unfollowUser(
      String followerId, String followingId) async {
    try {
      final userDto = await _userApi.unfollowUser(followerId, followingId);
      final user = userDto.toModel();
      return Right(user);
    } catch (e) {
      print(e);
      return const Left(UserFailure.unexpectedError());
    }
  }

  @override
  Future<Either<UserFailure, List<dynamic>>> getFollowers(String userId) async {
    try {
      final followerList = await _userApi.getFollowers(userId);

      return Right(followerList);
    } catch (e) {
      print(e);
      print('followers');
      return const Left(UserFailure.unexpectedError());
    }
  }

  @override
  Future<Either<UserFailure, List<dynamic>>> getFollowings(
      String userId) async {
    try {
      final followingList = await _userApi.getFollowings(userId);

      return Right(followingList);
    } catch (e) {
      print(e);
      print('followings');
      return const Left(UserFailure.unexpectedError());
    }
  }

  @override
  Future<Either<UserFailure, List<dynamic>>> getAdminUsers() async {
    try {
      final adminList = await _userApi.getAdminUsers();

      return Right(adminList);
    } catch (e) {
      return const Left(UserFailure.unexpectedError());
    }
  }

  @override
  Future<Either<UserFailure, User>> promoteUser(String userId) async {
    try {
      final userDto = await _userApi.promote(userId);
      final user = userDto.toModel();
      return Right(user);
    } catch (e) {
      return const Left(UserFailure.unexpectedError());
    }
  }

  @override
  Future<Either<UserFailure, User>> demoteUser(String userId) async {
    try {
      final userDto = await _userApi.demote(userId);
      final user = userDto.toModel();
      return Right(user);
    } catch (e) {
      return const Left(UserFailure.unexpectedError());
    }
  }
}
