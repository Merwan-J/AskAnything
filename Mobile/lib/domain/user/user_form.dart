import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_form.freezed.dart';

@freezed
class UserForm with _$UserForm {
  const factory UserForm({
    required String name,
    required String email,
    required String password,
    String? profilePic,
  }) = _UserForm;
}
