import 'dart:convert';

import 'package:askanything/domain/auth/email.dart';
import 'package:askanything/domain/auth/name.dart';
import 'package:askanything/domain/auth/password.dart';
import 'package:askanything/infrastructure/user/user_dto.dart';
import 'package:askanything/util/custom_http_client.dart';

import 'auth_response_dto.dart';

class AuthApi {
  static const String _loginUrl = "auth/login";
  static const String _registerUrl = "auth/register";

  final CustomHttpClient http;

  AuthApi(this.http);

  Future<AuthResponseDto> login(
      {required Name name, required Password password}) async {
    var body = jsonEncode({
      'username': name,
      'password': password,
    });

    var response = await http.post(_loginUrl, body: body);

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = await json.decode(response.body);
      return AuthResponseDto.fromJson(data);
    } else {
      throw Error();
    }
  }

  Future<UserDTO> signup({
    required Name name,
    required Password password,
    required Password confirmPassword,
    required EmailAddress email,
  }) async {
    var body = jsonEncode({
      'username': name,
      'password': password,
      'confirmPassword': confirmPassword,
      'email': email,
    });
    var response = await http.post(_registerUrl, body: body);
    if (response.statusCode == 200) {
      var data = await jsonDecode(response.body);
      return UserDTO.fromJson(data);
    } else {
      throw Error();
    }
  }

  Future changePassword({
    required Name name,
    required Password oldPassword,
    required Password newPassword,
    required Password confirmPassword,
  }) async {
    var body = jsonEncode({
      'username': name,
      'oldPassword': oldPassword,
      'newPassword': newPassword,
      'confirmPassword': confirmPassword,
    });
    var response = await http.patch(_registerUrl, body: body);
    if (response.statusCode == 200) {
      var data = await jsonDecode(response.body);
      return UserDTO.fromJson(data);
    } else {
      throw Error();
    }
  }
}
