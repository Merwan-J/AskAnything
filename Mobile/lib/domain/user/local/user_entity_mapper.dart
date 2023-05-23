import 'package:askanything/domain/user/user.dart';

import './user_entity.dart';

extension UserEntityMapper on UserEntity {
  User toUser() {
    return User(
      id: this.id,
      name: this.name,
      email: this.email,
      password: this.password,
      profilePic: this.profilePic,
      questionIds: this.questionIds,
      answerIds: this.answerIds,
      reputation: this.reputation,
      likes: this.likes,
      dislikes: this.dislikes,
      bookmarks: this.bookmarks,
      followers: this.followers,
      followings: this.followings,
      createdAt: this.createdAt,
      updatedAt: this.updatedAt,
    );
  }
}

extension UserMapper on User {
  UserEntity toEntity() {
    return UserEntity(
      id: this.id,
      name: this.name,
      email: this.email,
      password: this.password,
      profilePic: this.profilePic ?? "",
      questionIds: this.questionIds,
      answerIds: this.answerIds,
      reputation: this.reputation,
      likes: this.likes,
      dislikes: this.dislikes,
      bookmarks: this.bookmarks,
      followers: this.followers,
      followings: this.followings,
      createdAt: this.createdAt,
      updatedAt: this.updatedAt,
    );
  }
}
