import 'dart:convert';
import 'dart:io';

import 'package:askanything/application/user/user_event.dart';
import 'package:askanything/domain/user/user_form.dart';
import 'package:askanything/infrastructure/user/user_api.dart';
import 'package:askanything/infrastructure/user/user_dto.dart';
import 'package:askanything/infrastructure/user/user_form_dto.dart';
import 'package:askanything/infrastructure/user/user_form_mapper.dart';
import 'package:askanything/infrastructure/user/user_mapper.dart';
import 'package:askanything/infrastructure/user/user_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'user_repository_test.mocks.dart';

@GenerateMocks([UserApi])
void main() {
  group('User Repository Test', () {
    var file = File(
            '/home/elizur/github/AskAnything/Mobile/test/sample_test_data/sample_user.json')
        .readAsStringSync();
    test(
        'returns a UserDto if the http call for getAllUsers completes successfully',
        () async {
      final client = MockUserApi();
      final UserRepository userRepository = UserRepository(client);

      when(client.getUsers())
          .thenAnswer((_) async => [UserDTO.fromJson(jsonDecode(file))]);

      expect(await userRepository.getAllUsers(), isA<Right>());
    });

    test(
        'throws an exception if the http call for getAllUsers completes with an error',
        () async {
      final client = MockUserApi();
      final UserRepository userRepository = UserRepository(client);
      when(client.getUsers())
          .thenAnswer((_) async => throw Exception('Failed to load users'));

      expect(await userRepository.getAllUsers(), isA<Left>());
    });

    test('return a User if the http call completes with a success', () async {
      final client = MockUserApi();
      final UserRepository userRepository = UserRepository(client);
      final userFormDto = UserFormDTO.fromJson(jsonDecode(file));
      when(client.createUser(userFormDto))
          .thenAnswer((_) async => UserDTO.fromJson(jsonDecode(file)));

      expect(await userRepository.createUser(userFormDto.toUserForm()),
          isA<Right>());
    });

    test('Throws an error if the http call completes with an error', () async {
      final client = MockUserApi();
      final UserRepository userRepository = UserRepository(client);
      final userFormDto = UserFormDTO.fromJson(jsonDecode(file));
      when(client.createUser(userFormDto))
          .thenAnswer((_) async => throw Exception('Failed to create user'));

      expect(await userRepository.createUser(userFormDto.toUserForm()),
          isA<Left>());
    });
  });
}
