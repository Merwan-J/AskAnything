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
}
