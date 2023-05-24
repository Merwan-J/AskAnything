import 'package:askanything/application/profile/bloc/profile_event.dart';
import 'package:askanything/application/profile/bloc/profile_state.dart';
import 'package:askanything/domain/profile/edit_profile_failure.dart';
import 'package:askanything/domain/profile/profile.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final IEditProfileFormRepository editProfileFormRepository;

  ProfileBloc(this.editProfileFormRepository) : super(InitialProfileState()) {
    on<LoadProfileEvent>((event, emit) async {
      Either<EditProfileFailure, Profile> profile =
          await editProfileFormRepository.getProfile(event.id);

      profile.fold((l) => emit(ProfileState.errorProfile()),
          (r) => emit(ProfileState.loadedProfileState(profile)));
    });
    on<UpdateProfileEvent>(((event, emit) async {
      Either<EditProfileFailure, Profile> profile =
          await editProfileFormRepository.updateProfile(event.profile);

      profile.fold((l) => emit(ProfileState.errorProfile()),
          (r) => emit(ProfileState.loadedProfileState(profile)));
    }));
    on<DeleteProfileEvent>((event, emit) async {
      Either<EditProfileFailure, Unit> profile =
          await editProfileFormRepository.deleteProfile(event.id);

      profile.fold((l) => emit(ProfileState.errorProfile()),
          (r) => emit(ProfileState.successProfile()));
    });
  }
}
