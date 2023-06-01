class ChangePasswordFormDto {
  final String oldPassword;
  final String newPassword;
  final String confirmPassword;

  ChangePasswordFormDto({
    required this.oldPassword,
    required this.newPassword,
    required this.confirmPassword,
  });

  factory ChangePasswordFormDto.fromJson(Map<String, dynamic> json) {
    return ChangePasswordFormDto(
      oldPassword: json['oldPassword'],
      newPassword: json['newPassword'],
      confirmPassword: json['confirmPassword'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'oldPassword': oldPassword,
      'newPassword': newPassword,
      'confirmPassword': confirmPassword,
    };
  }
}
