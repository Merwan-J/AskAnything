import 'package:askanything/domain/user/user.dart';
import 'package:askanything/infrastructure/user/user_dto.dart';

class UserMapper {
  static UserDTO toDTO(User user) {
    return UserDTO(
      id: user.id,
      name: user.name,
      email: user.email,
      password: user.password,
      profilePic: user.profilePic,
      questionIds: user.questionIds,
      answerIds: user.answerIds,
      reputation: user.reputation,
      likes: user.likes,
      dislikes: user.dislikes,
      bookmarks: user.bookmarks,
      followers: user.followers,
      followings: user.followings,
      createdAt: user.createdAt,
      updatedAt: user.updatedAt,
    );
  }

  static User fromDTO(UserDTO userDTO) {
    return User(
      id: userDTO.id,
      name: userDTO.name,
      email: userDTO.email,
      password: userDTO.password,
      profilePic: userDTO.profilePic,
      questionIds: userDTO.questionIds,
      answerIds: userDTO.answerIds,
      reputation: userDTO.reputation,
      likes: userDTO.likes,
      dislikes: userDTO.dislikes,
      bookmarks: userDTO.bookmarks,
      followers: userDTO.followers,
      followings: userDTO.followings,
      createdAt: userDTO.createdAt,
      updatedAt: userDTO.updatedAt,
    );
  }
}
