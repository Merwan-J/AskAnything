import 'package:askanything/domain/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.freezed.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signedIn(Map<String, dynamic> user, String token) =
      AuthEventSignedIn;
  const factory AuthEvent.signOut() = AuthEventSignOut;
}
