import 'package:askanything/domain/user/user.dart';
import 'package:askanything/domain/user/user_form.dart';
import 'package:askanything/infrastructure/user/user_dto.dart';
import 'package:askanything/infrastructure/user/user_form_dto.dart';

extension UserMapper on User {
  UserDTO toDTO() {
    return UserDTO(
      id: id,
      name: name,
      email: email,
      role: role,
      password: password,
      profilePic: profilePic ?? "",
      questionIds: questionIds,
      answerIds: answerIds,
      reputation: reputation,
      likes: likes,
      dislikes: dislikes,
      bookmarks: bookmarks,
      followers: followers,
      followings: followings,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  UserFormDTO toFormDTO() {
    return UserFormDTO(
      name: name,
      email: email,
      password: password,
      profilePic: profilePic,
    );
  }
}

extension UserFormDTOMapper on UserForm {
  UserFormDTO toFormDTO() {
    return UserFormDTO(
      name: name,
      email: email,
      password: password,
      profilePic: profilePic,
    );
  }
}

extension UserDTOMapper on UserDTO {
  User toModel() {
    return User(
      id: id,
      name: name,
      email: email,
      role: role,
      password: password,
      profilePic: profilePic,
      questionIds: questionIds,
      answerIds: answerIds,
      reputation: reputation,
      likes: likes,
      dislikes: dislikes,
      bookmarks: bookmarks,
      followers: followers,
      followings: followings,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
