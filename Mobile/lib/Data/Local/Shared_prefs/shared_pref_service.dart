import 'dart:convert';
import 'package:askanything/domain/user/user.dart';
import 'package:askanything/infrastructure/user/user_dto.dart';
import 'package:askanything/infrastructure/user/user_mapper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceService {
  Future<void> setJwtToken(String token) async {
    return SharedPreferences.getInstance()
        .then((value) => value.setString('token', token));
  }

  Future<String?> getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('token');
  }

  Future<void> removeToken() async {
    return await SharedPreferences.getInstance()
        .then((value) => value.remove('token'));
  }

  Future<bool> isFirstRun() async {
    return SharedPreferences.getInstance().then((prefs) {
      return prefs.getBool('firstRun') ?? true;
    });
  }

  Future<void> setFirstRun(bool isFirstRun) async {
    return SharedPreferences.getInstance().then((prefs) {
      prefs.setBool('firstRun', isFirstRun);
    });
  }

  Future<User?> getAuthenticatedUser() async {
    return SharedPreferences.getInstance().then((prefs) {
      var user = prefs.getString('user');
      if (user == null) {
        return null;
      }
      return UserDTO.fromJson(json.decode(user)).toModel();
    });
  }

  Future<void> setAuthenticatedUser(User user) async {
    return SharedPreferences.getInstance().then((prefs) {
      prefs.setString('user', json.encode(user.toDTO().toJson()));
    });
  }

  Future<void> removeAuthenticatedUser() {
    return SharedPreferences.getInstance().then((prefs) {
      prefs.remove('user');
    });
  }
}
