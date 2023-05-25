import 'package:askanything/domain/auth/auth_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// part 'change_password_state.freezed.dart';
part 'change_password_state.freezed.dart';

@freezed
class ChangePasswordState with _$ChangePasswordState {
  const factory ChangePasswordState.initial() = Initial;
  const factory ChangePasswordState.loading() = Loading;
  const factory ChangePasswordState.success() = Success;
  const factory ChangePasswordState.error(AuthFailure failure) = Error;
}
