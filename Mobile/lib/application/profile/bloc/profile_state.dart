import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/profile/edit_profile_failure.dart';
import '../../../domain/profile/profile.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initialProfileState() = InitialProfileState;
  const factory ProfileState.loadingProfileState() = LoadingProfileState;
  const factory ProfileState.loadedProfileState(
      Either<EditProfileFailure, Profile> profile) = LoadedProfileState;
  const factory ProfileState.successProfile() = SuccessProfileState;
  const factory ProfileState.errorProfile() = ErrorProfileState;
}
