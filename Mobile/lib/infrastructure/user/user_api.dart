import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:askanything/domain/user/user_failure.dart';
import 'package:askanything/infrastructure/user/user_dto.dart';
import 'package:askanything/infrastructure/user/user_form_dto.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class UserApi {
  final apiUrl = dotenv.env['API_URL'];

  Future<UserDTO> createUser(UserFormDTO userFormDTO) async {
    final url = Uri.parse('$apiUrl/users');
    final headers = {'Content-Type': 'application/json'};
    final body = json.encode(userFormDTO.toJson());

    final response = await http.post(url, headers: headers, body: body);

    if (response.statusCode == 201) {
      final dynamic jsonData = json.decode(response.body);
      return UserDTO.fromJson(jsonData['data']['user']);
    } else {
      throw UserFailure.serverError();
    }
  }

  Future<UserDTO> getUserById(String id) async {
    final url = Uri.parse('$apiUrl/users/$id');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final dynamic jsonData = json.decode(response.body);
      return UserDTO.fromJson(jsonData['data']['user']);
    } else if (response.statusCode == 404) {
      throw UserFailure.notFoundError();
    } else {
      throw UserFailure.serverError();
    }
  }

  Future<void> updateUser(UserDTO user) async {
    final url = Uri.parse('$apiUrl/users/${user.id}');
    final headers = {'Content-Type': 'application/json'};
    final body = json.encode(user.toJson());

    final response = await http.patch(url, headers: headers, body: body);

    if (response.statusCode != 200) {
      throw UserFailure.serverError();
    }
  }

  Future<void> deleteUser(String id) async {
    final url = Uri.parse('$apiUrl/users/$id');
    final response = await http.delete(url);

    if (response.statusCode != 200) {
      throw UserFailure.serverError();
    }
  }

  Future<List<UserDTO>> getUsers() async {
    final url = Uri.parse('$apiUrl/users');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List<dynamic> jsonList = json.decode(response.body);
      return jsonList.map((json) => UserDTO.fromJson(json)).toList();
    } else {
      throw UserFailure.serverError();
    }
  }

  Future<void> followUser(String followerId, String followingId) async {
    final url = Uri.parse('$apiUrl/users/$followerId/follow');
    final headers = {'Content-Type': 'application/json'};
    final body = json.encode({'_id': followingId});

    final response = await http.patch(url, headers: headers, body: body);

    if (response.statusCode != 201) {
      throw UserFailure.serverError();
    }
  }

  Future<void> unfollowUser(String followerId, String followingId) async {
    final url = Uri.parse('$apiUrl/users/$followerId/unfollow');
    final headers = {'Content-Type': 'application/json'};
    final body = json.encode({'_id': followingId});

    final response = await http.patch(url, headers: headers, body: body);

    if (response.statusCode != 201) {
      throw UserFailure.serverError();
    }
  }

  Future<List<UserDTO>> getFollowers(String userId) async {
    final url = Uri.parse('$apiUrl/users/$userId/followers');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List<dynamic> jsonList = json.decode(response.body);
      return jsonList.map((json) => UserDTO.fromJson(json)).toList();
    } else {
      throw UserFailure.serverError();
    }
  }

  Future<List<UserDTO>> getFollowings(String userId) async {
    final url = Uri.parse('$apiUrl/users/$userId/followings');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List<dynamic> jsonList = json.decode(response.body);
      return jsonList.map((json) => UserDTO.fromJson(json)).toList();
    } else {
      throw UserFailure.serverError();
    }
  }
}
