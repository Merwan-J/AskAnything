import 'package:askanything/domain/auth/auth_failure.dart';
import 'package:askanything/domain/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = LoginStateInitial;
  const factory LoginState.loading() = LoginStateLoading;
  const factory LoginState.success(Map<String, dynamic> user, String token) =
      LoginStateSuccess;
  const factory LoginState.failure(AuthFailure error) = LoginStateFailure;
}
