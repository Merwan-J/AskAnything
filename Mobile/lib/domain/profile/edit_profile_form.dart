class EditProfileForm {
  final String name;
  final String email;
  final String? image;

  EditProfileForm({
    required this.name,
    required this.email,
    this.image,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'name': name,
      'email': email,
      'image': image,
    };
    return data;
  }
}
