import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:askanything/domain/user/user.dart';
import 'package:askanything/infrastructure/user/user_dto.dart';
import 'package:askanything/infrastructure/user/user_mapper.dart';

class MockSharedPreferences extends Mock implements SharedPreferences {}

void main() {
  group('SharedPreferenceService Tests', () {
    late MockSharedPreferences mockSharedPreferences;
    late SharedPreferenceService sharedPreferenceService;

    setUp(() {
      mockSharedPreferences = MockSharedPreferences();
      sharedPreferenceService = SharedPreferenceService();
      sharedPreferenceService.prefs = mockSharedPreferences;
    });

    test('setJwtToken should store the token in SharedPreferences', () async {
      // Arrange
      const token = 'my_token';

      // Act
      await sharedPreferenceService.setJwtToken(token);

      // Assert
      verify(mockSharedPreferences.setString('token', token)).called(1);
      verifyNoMoreInteractions(mockSharedPreferences);
    });

    test('getToken should retrieve the token from SharedPreferences', () async {
      // Arrange
      const token = 'my_token';
      when(mockSharedPreferences.getString('token')).thenReturn(token);

      // Act
      final result = await sharedPreferenceService.getToken();

      // Assert
      expect(result, token);
      verify(mockSharedPreferences.getString('token')).called(1);
      verifyNoMoreInteractions(mockSharedPreferences);
    });

    test('removeToken should remove the token from SharedPreferences',
        () async {
      // Act
      await sharedPreferenceService.removeToken();

      // Assert
      verify(mockSharedPreferences.remove('token')).called(1);
      verifyNoMoreInteractions(mockSharedPreferences);
    });

    test('isFirstRun should return the value from SharedPreferences', () async {
      // Arrange
      const isFirstRun = true;
      when(mockSharedPreferences.getBool('firstRun')).thenReturn(isFirstRun);

      // Act
      final result = await sharedPreferenceService.isFirstRun();

      // Assert
      expect(result, isFirstRun);
      verify(mockSharedPreferences.getBool('firstRun')).called(1);
      verifyNoMoreInteractions(mockSharedPreferences);
    });

    test('setFirstRun should store the value in SharedPreferences', () async {
      // Arrange
      const isFirstRun = true;

      // Act
      await sharedPreferenceService.setFirstRun(isFirstRun);

      // Assert
      verify(mockSharedPreferences.setBool('firstRun', isFirstRun)).called(1);
      verifyNoMoreInteractions(mockSharedPreferences);
    });

    test(
        'getAuthenticatedUser should retrieve and map the user from SharedPreferences',
        () async {
      // Arrange
      const userJson = '{"id": 1, "name": "John Doe"}';
      final userDTO = UserDTO.fromJson(json.decode(userJson));
      final user = userDTO.toModel();
      when(mockSharedPreferences.getString('user')).thenReturn(userJson);

      // Act
      final result = await sharedPreferenceService.getAuthenticatedUser();

      // Assert
      expect(result, user);
      verify(mockSharedPreferences.getString('user')).called(1);
      verifyNoMoreInteractions(mockSharedPreferences);
    });

    test(
        'setAuthenticatedUser should store the mapped user in SharedPreferences',
        () async {
      // Arrange
      final user = {'id': 1, 'name': 'John Doe'};

      // Act
      await sharedPreferenceService.setAuthenticatedUser(user);

      // Assert
      verify(mockSharedPreferences.setString('user', json.encode(user)))
          .called(1);
      verifyNoMoreInteractions(mockSharedPreferences);
    });

    test(
        'removeAuthenticatedUser should remove the user from SharedPreferences',
        () async {
      // Act
      await sharedPreferenceService.removeAuthenticatedUser();

      // Assert
      verify(mockSharedPreferences.remove('user')).called(1);
      verifyNoMoreInteractions(mockSharedPreferences);
    });

    // Add more test cases for other methods here...
  });
}

class SharedPreferenceService {
  SharedPreferences? prefs;

  Future<bool> setJwtToken(String token) async {
    return prefs!.setString('token', token);
  }

  Future<String?> getToken() async {
    return prefs!.getString('token');
  }

  Future<bool> removeToken() async {
    return prefs!.remove('token');
  }

  Future<bool> isFirstRun() async {
    return prefs!.getBool('firstRun') ?? true;
  }

  Future<void> setFirstRun(bool isFirstRun) async {
    prefs!.setBool('firstRun', isFirstRun);
  }

  Future<User?> getAuthenticatedUser() async {
    var user = prefs!.getString('user');
    if (user == null) {
      return null;
    }
    return UserDTO.fromJson(json.decode(user)).toModel();
  }

  Future<void> setAuthenticatedUser(Map<String, dynamic> user) async {
    prefs!.setString('user', json.encode(user));
  }

  Future<void>? removeAuthenticatedUser() {
    prefs!.remove('user');
  }

  // Add other methods here...
}
