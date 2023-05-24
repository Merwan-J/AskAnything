import 'package:askanything/domain/user/user_form.dart';
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

extension UserFormDtoMapper on UserFormDTO {
  UserForm toUserForm() {
    return UserForm(
      name: name,
      email: email,
      password: password,
      profilePic: profilePic,
    );
  }
}
