import 'package:askanything/domain/profile/edit_profile_form.dart';

class ProfileFormDto {
  final String name;
  final String email;
  final String? image;

  ProfileFormDto({
    required this.name,
    required this.email,
    this.image,
  });

  EditProfileForm toEditProfileForm() {
    return EditProfileForm(
      name: name,
      email: email,
      image: image,
    );
  }
}
