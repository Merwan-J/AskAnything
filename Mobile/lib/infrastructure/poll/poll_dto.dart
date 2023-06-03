class PollDto {
  //poll dto
  final String id;
  final String title;
  final List<Map<String, dynamic>> options;
  final String author;
  final String voteText;
  final DateTime createdAt;
  final DateTime updatedAt;

  PollDto({
    required this.id,
    required this.title,
    required this.options,
    required this.author,
    required this.voteText,
    required this.createdAt,
    required this.updatedAt,
  });
}
