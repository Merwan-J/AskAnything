class PollForm {
  String title;
  List<Map<String, dynamic>> options;
  String author;
  String voteText;

  PollForm({
    required this.title,
    required this.options,
    required this.author,
    required this.voteText,
  });
}
