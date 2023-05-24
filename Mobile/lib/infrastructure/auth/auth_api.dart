import 'dart:convert';

import 'package:askanything/domain/auth/change_password_form.dart';
import 'package:askanything/domain/auth/email.dart';
import 'package:askanything/domain/auth/name.dart';
import 'package:askanything/domain/auth/password.dart';
import 'package:askanything/infrastructure/auth/change_password_form_dto.dart';
import 'package:askanything/infrastructure/auth/login_form_dto.dart';
import 'package:askanything/infrastructure/auth/signup_form_dto.dart';
import 'package:askanything/infrastructure/user/user_dto.dart';
import 'package:askanything/util/custom_http_client.dart';

import 'auth_response_dto.dart';

class AuthApi {
  static const String _loginUrl = "auth/login";
  static const String _registerUrl = "auth/register";

  final CustomHttpClient http;

  AuthApi(this.http);

  Future<AuthResponseDto> login(
      {required String username, required String password}) async {
    var body = jsonEncode({
      'username': username,
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
    required SignUpFormDto signupForm,
  }) async {
    var body = jsonEncode(signupForm.toJson());
    var response = await http.post(_registerUrl, body: body);
    if (response.statusCode == 200) {
      var data = await jsonDecode(response.body);
      return UserDTO.fromJson(data);
    } else {
      throw Error();
    }
  }

  Future changePassword({
    required ChangePasswordFormDto changePassword,
  }) async {
    var body = jsonEncode(changePassword.toJson());
    var response = await http.patch(_registerUrl, body: body);
    if (response.statusCode == 200) {
      var data = await jsonDecode(response.body);
      return UserDTO.fromJson(data);
    } else {
      throw Error();
    }
  }
}
