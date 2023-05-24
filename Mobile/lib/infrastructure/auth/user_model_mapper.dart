// import 'package:askanything/infrastructure/user/user_dto.dart';
// import 'package:askanything/infrastructure/user/user_form_dto.dart';

// import '../../domain/user/user.dart';

// extension UserMapper on UserFormDTO {
//   UserFormDTO toUser() {
//     return UserFormDTO(      
//       name: name,
//       email: email,
//       password: password,      
//     );
//   }

//   UserEntity toUserEntity() {
//     return UserEntity(
//       id: id,
//       userName: userName,
//       firstName: firstName,
//       lastName: lastName,
//       profilePicture: Constants.imagesBaseUrl + profilePictureRelativeUrl,
//       role: role,
//     );
//   }
// }

// extension UserDtoMapper on User {
//   UserDto toUserDto() {
//     return UserDto(
//       id: id,
//       userName: userName,
//       firstName: firstName,
//       lastName: lastName,
//       profilePictureRelativeUrl: profilePicture.replaceAll(
//         Constants.imagesBaseUrl,
//         '',
//       ),
//       role: role == Role.admin ? 'ADMIN' : 'MEMBER',
//     );
//   }

//   UserEntity toUserEntity() {
//     return UserEntity(
//       id: id,
//       userName: userName,
//       firstName: firstName,
//       lastName: lastName,
//       profilePicture: profilePicture,
//       role: role == Role.admin ? 'ADMIN' : 'MEMBER',
//     );
//   }
// }
