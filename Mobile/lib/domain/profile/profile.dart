class Profile {
  final String name;
  final String profilePicture;
  final int reputation;
  final List<dynamic> following; //TODO: Change to User
  final List<dynamic> followers; //TODO: Change to User
  final List<dynamic> questions; //TODO: Change to Question
  final List<dynamic> answers; //TODO: Change to Answer

  Profile({
    required this.name,
    required this.profilePicture,
    required this.reputation,
    required this.following,
    required this.followers,
    required this.questions,
    required this.answers,
  });
}
