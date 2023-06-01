import 'dart:convert';
import 'package:askanything/domain/user/user.dart';
import 'package:askanything/infrastructure/user/user_dto.dart';
import 'package:askanything/infrastructure/user/user_form_dto.dart';
import 'package:askanything/util/custom_http_client.dart';
import 'package:askanything/infrastructure/question/question_dto.dart';

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
      var user = jsonDecode(response.body)['data']['user'];
      // var questions = (user['questions'] as List<dynamic>)
      //     .map((question) => QuestionDto.fromJson(question))
      //     .toList();
      print("before updating");
      // user['questions'] = questions;
      print('after updating');
      // print(user['questions'][0]['answers']);
      return UserDTO.fromJson(user);
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

  Future<UserDTO> followUser(String followerId, String followingId) async {
    var response = await _customHttpClient.post("users/$followingId/follow",
        body: json.encode({"followerId": followerId}));
    if (response.statusCode == 200) {
      var user = jsonDecode(response.body)['data']['user'];
      print(user);
      print('unfollow');
      return UserDTO.fromJson(user);
    } else {
      print('follow error');
      throw Exception("Failed to follow user");
    }
  }

  Future<UserDTO> unfollowUser(String followerId, String followingId) async {
    var response = await _customHttpClient.post("users/$followingId/unfollow",
        body: json.encode({"followerId": followerId}));
    if (response.statusCode == 200) {
      var user = jsonDecode(response.body)['data']['user'];
      print(user);
      print('unfollow');
      return UserDTO.fromJson(user);
    } else {
      print('unfollow error');
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

void printUserJson(Map<String, dynamic> json) {
  String id = json['_id'];
  String name = json['name'];
  String email = json['email'];
  String password = json['password'];
  String profilePic = json['profilePic'] ?? '';
  List<String> questionIds = List<String>.from(json['questions']);
  List<String> answerIds = List<String>.from(json['answers']);
  int reputation = json['reputation'];
  int likes = json['likes'];
  int dislikes = json['dislikes'];
  Map<String, dynamic> bookmarks = Map<String, dynamic>.from(json['bookmarks']);
  List<String> followers = List<String>.from(json['followers']);
  List<String> followings = List<String>.from(json['following']);
  DateTime createdAt = DateTime.parse(json['createdAt']);
  DateTime updatedAt = DateTime.parse(json['updatedAt']);

  print('id: $id');
  print('name: $name');
  print('email: $email');
  print('password: $password');
  print('profilePic: $profilePic');
  print('questionIds: $questionIds');
  print('answerIds: $answerIds');
  print('reputation: $reputation');
  print('likes: $likes');
  print('dislikes: $dislikes');
  print('bookmarks: $bookmarks');
  print('followers: $followers');
  print('followings: $followings');
  print('createdAt: $createdAt');
  print('updatedAt: $updatedAt');
}
