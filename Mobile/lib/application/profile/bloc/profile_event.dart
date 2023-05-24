import 'package:freezed_annotation/freezed_annotation.dart';
part 'profile_event.freezed.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.loadProfileEvent(String id) = LoadProfileEvent;
  const factory ProfileEvent.updateProfileEvent(Profile profile) =
      UpdateProfileEvent;

  const factory ProfileEvent.deleteProfile(String id) = DeleteProfileEvent;
  const factory ProfileEvent.changePasswordEvent() = ChangePasswordEvent;
  const factory ProfileEvent.logoutEvent() = LogoutEvent;
}
