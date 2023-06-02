import 'package:equatable/equatable.dart';

import '../../../domain/auth/login_form.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object?> get props => [];
}

class LoginEventLogin extends LoginEvent {
  final LoginForm form;

  const LoginEventLogin(this.form);

  @override
  List<Object?> get props => [form];
}
