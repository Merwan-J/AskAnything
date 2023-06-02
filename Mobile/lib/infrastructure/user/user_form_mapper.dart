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

UserFormDTO userFormDtoFromJson(Map<String, dynamic> json) {
  return UserFormDTO(
    name: json['name'],
    email: json['email'],
    password: json['password'],
    profilePic: json['profilePic'],
  );
}

UserForm userFormFromJson(Map<String, dynamic> json) {
  return UserForm(
    name: json['name'],
    email: json['email'],
    password: json['password'],
    profilePic: json['profilePic'],
  );
}
