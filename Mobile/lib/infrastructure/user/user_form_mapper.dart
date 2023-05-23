import 'package:askanything/domain/user/user.dart';
import 'package:askanything/infrastructure/user/user_form_dto.dart';

class UserFormMapper {
  static UserFormDTO toDTO(User user) {
    return UserFormDTO(
      name: user.name,
      email: user.email,
      password: user.password,
      profilePic: user.profilePic,
    );
  }
}
