import 'package:askanything/infrastructure/user/user_form_dto.dart';

extension UserFormMapper on UserFormDTO {
  UserFormDTO toUser() {
    return UserFormDTO(
      name: name,
      email: email,
      password: password,
      profilePic: profilePic,
    );
  }
}
