import 'dart:convert';
import 'package:equatable/equatable.dart';

class LoginForm extends Equatable {
  final String emailAddress;
  final String password;

  LoginForm({
    required this.emailAddress,
    required this.password,
  });

  LoginForm copyWith({
    String? emailAddress,
    String? password,
  }) {
    return LoginForm(
      emailAddress: emailAddress ?? this.emailAddress,
      password: password ?? this.password,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'emailAddress': emailAddress,
      'password': password,
    };
  }

  factory LoginForm.fromJson(Map<String, dynamic> json) {
    return LoginForm(
      emailAddress: json['emailAddress'],
      password: json['password'],
    );
  }

  @override
  List<Object?> get props => [emailAddress, password];
}
