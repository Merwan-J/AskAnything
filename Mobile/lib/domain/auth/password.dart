import 'package:equatable/equatable.dart';

class Password extends Equatable {
  final String password;

  Password({required this.password}) {
    if (password.isEmpty) {
      throw Exception('Password can not be empty');
    }
    if (password.length < 8) {
      throw Exception('Password must be at least 8 characters');
    }
  }

  @override
  List<Object?> get props => [password];

  factory Password.fromJson(Map<String, dynamic> json) {
    return Password(
      password: json['password'] as String,
    );
  }

  // Add the toJson method
  Map<String, dynamic> toJson() {
    return {
      'password': password,
    };
  }
}
