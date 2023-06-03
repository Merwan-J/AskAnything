import 'dart:convert';

import 'package:askanything/domain/user/user.dart';

class AuthorDto {
  final String name;
  final String email;
  final String id;
  final String? profilePic;

  AuthorDto({
    required this.name,
    required this.email,
    required this.id,
    this.profilePic,
  });

  factory AuthorDto.fromJson(Map<String, dynamic> json) {
    return AuthorDto(
      name: json['name'],
      email: json['email'],
      id: json['_id'],
      profilePic: json['profilePic'] ?? '',
    );
  }

  factory AuthorDto.fromUser(User user) {
    return AuthorDto(
      name: user.name,
      email: user.email,
      id: user.id,
      profilePic: user.profilePic,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'name': name,
      'email': email,
      'profilePic': profilePic,
    };
  }

  String toJsonString() {
    print("in author dto TO JSON STRING");
    return '{"name": "$name", "email": "$email", "id": "$id", "profilePic": "$profilePic"}';
  }

  static AuthorDto fromJsonString(String jsonString) {
    print("in author dto");
    final json = jsonDecode(jsonString);
    print(json);
    print(AuthorDto(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      profilePic: null,
    ));
    print("out author dto");
    return AuthorDto(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      profilePic: null,
    );
  }

  String toStringJson() {
    return jsonEncode(toJson());
  }
}
