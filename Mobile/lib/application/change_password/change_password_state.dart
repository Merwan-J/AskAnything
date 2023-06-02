import 'package:askanything/domain/auth/auth_failure.dart';

class ChangePasswordState {
  const ChangePasswordState._();

  const factory ChangePasswordState.initial() = Initial;
  const factory ChangePasswordState.loading() = Loading;
  const factory ChangePasswordState.success() = Success;
  const factory ChangePasswordState.error(AuthFailure failure) = Error;
}

class Initial extends ChangePasswordState {
  const Initial() : super._();
}

class Loading extends ChangePasswordState {
  const Loading() : super._();
}

class Success extends ChangePasswordState {
  const Success() : super._();
}

class Error extends ChangePasswordState {
  final AuthFailure failure;

  const Error(this.failure) : super._();
}
