import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/user/user.dart';

part 'auth_event.freezed.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent(
    User user,
  ) = _SignUpForm;
  const factory AuthEvent.signedIn(User user, String token) = AuthEventSignedIn;
  const factory AuthEvent.signOut() = AuthEventSignOut;
}
