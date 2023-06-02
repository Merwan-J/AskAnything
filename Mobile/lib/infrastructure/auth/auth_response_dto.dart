class AuthResponseDto {
  final Map<String, dynamic> user;
  final String accessToken;

  AuthResponseDto({
    required this.user,
    required this.accessToken,
  });

  factory AuthResponseDto.fromJson(Map<String, dynamic> json) {
    return AuthResponseDto(
      user: json['user'] as Map<String, dynamic>,
      accessToken: json['accessToken'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'user': user,
      'accessToken': accessToken,
    };
  }
}
