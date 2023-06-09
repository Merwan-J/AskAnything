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
import 'package:dartz/dartz.dart';
import 'auth_response_dto.dart';

class AuthApi {
  static const String _loginUrl = "auth/login";
  static const String _registerUrl = "auth/signup";

  final CustomHttpClient http;

  AuthApi(this.http);

  Future<AuthResponseDto> login(
      {required String email, required String password}) async {
    var body = jsonEncode({
      'email': email,
      'password': password,
    });

    var response = await http.post(_loginUrl, body: body);
    if (response.statusCode == 200) {
      final Map<String, dynamic> data =
          await json.decode(response.body)['data'];

      print(data['user']);
      String token = data['token'];
      // UserDTO user = UserDTO.fromJson(data['user']);
      Map<String, dynamic> user = data['user'];
      print(user);
      print(token);

      return AuthResponseDto(accessToken: token, user: user);
    } else {
      print(response.body);
      print('in api');
      throw Exception('Failed to login');
    }
  }

  Future<Unit> signup({
    required SignUpFormDto signupForm,
  }) async {
    try {
      var body = jsonEncode({
        'name': signupForm.name,
        'email': signupForm.emailAddress,
        'password': signupForm.password,
      });
      var response = await http.post(_registerUrl, body: body);
      final Map<String, dynamic> data = await json.decode(response.body);
      if (response.statusCode != 200) {
        print(response.body);
        throw Exception("Failed to signup");
      } else {
        return unit;
      }
    } on Exception catch (e) {
      print(e);
      print('exception in api');
      throw Exception("Failed to signup");
    }
  }

  Future changePassword({required ChangePasswordForm changePassword}) async {
    print("in change password api");
    var id = "6477d9a58d15004012f9f67e";
    var body = jsonEncode({
      'newPassword': changePassword.newPassword,
      "oldPassword": changePassword.oldPassword,
    });
    var response = await http.patch("auth/changePassword/$id", body: body);
    print("after change password api");
    print(response.body);
    if (response.statusCode == 200) {
      var data = await jsonDecode(response.body)['data']['user'];
      return UserDTO.fromJson(data);
    } else {
      throw Error();
    }
  }
}
