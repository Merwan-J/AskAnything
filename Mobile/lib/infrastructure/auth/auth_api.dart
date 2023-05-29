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

  Future<UserDTO> signup({
    required SignUpFormDto signupForm,
  }) async {
    var body = jsonEncode(signupForm.toJson());

    // TODO: from the response body access the data and extract user and token
    var response = await http.post(_registerUrl, body: body);
    if (response.statusCode == 200) {
      var data = await jsonDecode(response.body);
      return UserDTO.fromJson(data);
    } else {
      throw Exception("Failed to signup");
    }
  }

  Future changePassword(
      {required ChangePasswordForm changePassword,
      required String userId}) async {
    var body = jsonEncode({
      'password': changePassword.newPassword.password,
    });
    var response = await http
        .patch(_registerUrl, body: body, queryParameters: {'id': userId});
    if (response.statusCode == 200) {
      var data = await jsonDecode(response.body);
      return UserDTO.fromJson(data);
    } else {
      throw Error();
    }
  }
}
