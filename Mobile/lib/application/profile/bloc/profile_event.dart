import 'package:askanything/infrastructure/profile/profile_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/profile/profile.dart';
import '../../../infrastructure/profile/profile_form_dto.dart';
part 'profile_event.freezed.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.loadProfileEvent(String id) = LoadProfileEvent;
  const factory ProfileEvent.updateProfileEvent(ProfileFormDto profileDto) =
      UpdateProfileEvent;

  const factory ProfileEvent.deleteProfile(String id) = DeleteProfileEvent;
  const factory ProfileEvent.changePasswordEvent() = ChangePasswordEvent;
  const factory ProfileEvent.logoutEvent() = LogoutEvent;
}
