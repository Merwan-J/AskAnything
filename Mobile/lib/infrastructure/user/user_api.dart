import 'dart:convert';
import 'package:askanything/domain/user/user.dart';
import 'package:askanything/infrastructure/user/user_dto.dart';
import 'package:askanything/infrastructure/user/user_form_dto.dart';
import 'package:askanything/util/custom_http_client.dart';

class UserApi {
  CustomHttpClient _customHttpClient;
  UserApi(this._customHttpClient);
  Future<UserDTO> createUser(UserFormDTO userFormDto) async {
    var response = await _customHttpClient.post("users",
        body: json.encode(userFormDto.toJson()));

    if (response.statusCode == 201) {
      return UserDTO.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("Failed to create user");
    }
  }

  Future<UserDTO> getUserById(String id) async {
    var response = await _customHttpClient.get("users/$id");

    if (response.statusCode == 200) {
      return UserDTO.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("Failed to load user");
    }
  }

  Future<UserDTO> updateUser(UserFormDTO userFormDto, String userId) async {
    final response = await _customHttpClient.put(
      "users/$userId",
      body: json.encode(userFormDto.toJson()),
    );

    if (response.statusCode == 200) {
      return UserDTO.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("Failed to update user");
    }
  }

  Future<void> deleteUser(String id) async {
    var response = await _customHttpClient.delete("users/$id");

    if (response.statusCode != 200) {
      throw Exception("Failed to delete user");
    }
  }

  Future<List<UserDTO>> getUsers() async {
    var response = await _customHttpClient.get("users");

    if (response.statusCode == 200) {
      List<dynamic> usersJson = jsonDecode(response.body);
      return usersJson.map((user) => UserDTO.fromJson(user)).toList();
    } else {
      throw Exception("Failed to load users");
    }
  }

  Future<void> followUser(String followerId, String followingId) async {
    var response = await _customHttpClient.post("users/$followerId/follow",
        body: json.encode({"followingId": followingId}));

    if (response.statusCode != 200) {
      throw Exception("Failed to follow user");
    }
  }

  Future<void> unfollowUser(String followerId, String followingId) async {
    var response = await _customHttpClient.post("users/$followerId/unfollow",
        body: json.encode({"followingId": followingId}));

    if (response.statusCode != 200) {
      throw Exception("Failed to unfollow user");
    }
  }

  Future<List<UserDTO>> getFollowers(String userId) async {
    var response = await _customHttpClient.get("users/$userId/followers");

    if (response.statusCode == 200) {
      List<dynamic> followersJson = jsonDecode(response.body);
      return followersJson
          .map((follower) => UserDTO.fromJson(follower))
          .toList();
    } else {
      throw Exception("Failed to load followers");
    }
  }

  Future<List<UserDTO>> getFollowings(String userId) async {
    var response = await _customHttpClient.get("users/$userId/followings");

    if (response.statusCode == 200) {
      List<dynamic> followingsJson = jsonDecode(response.body);
      return followingsJson
          .map((following) => UserDTO.fromJson(following))
          .toList();
    } else {
      throw Exception("Failed to load followings");
    }
  }

  Future<List<UserDTO>> getAdminUsers() async {
    var response = await _customHttpClient.get("users/admin");

    if (response.statusCode == 200) {
      List<dynamic> usersJson = jsonDecode(response.body);
      return usersJson.map((user) => UserDTO.fromJson(user)).toList();
    } else {
      throw Exception("Failed to load users");
    }
  }
}
