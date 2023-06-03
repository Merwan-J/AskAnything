class Poll {
  final String pollId;
  final String pollTitle;
  final List<PollOptionModel> pollOptions;
  final String author;
  final String voteText;
  final DateTime createdAt;
  final DateTime updatedAt;

  Poll({
    required this.pollId,
    required this.pollTitle,
    required this.pollOptions,
    required this.author,
    required this.voteText,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Poll.fromJson(Map<String, dynamic> json) {
    List<dynamic> optionsJson = json['pollOptions'];
    List<PollOptionModel> options = optionsJson
        .map((optionJson) => PollOptionModel.fromJson(optionJson))
        .toList();

    return Poll(
      pollId: json['pollId'],
      pollTitle: json['pollTitle'],
      pollOptions: options,
      author: json['author'],
      voteText: json['voteText'],
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
    );
  }

  Map<String, dynamic> toJson() {
    List<Map<String, dynamic>> optionsJson =
        pollOptions.map((option) => option.toJson()).toList();

    return {
      'pollId': pollId,
      'pollTitle': pollTitle,
      'pollOptions': optionsJson,
      'author': author,
      'voteText': voteText,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }
}

class PollOptionModel {
  final String title;
  final List<String> votes;
  final String id;

  PollOptionModel({
    required this.title,
    required this.votes,
    required this.id,
  });

  factory PollOptionModel.fromJson(Map<String, dynamic> json) {
    List<dynamic> votesJson = json['votes'];
    List<String> votes =
        votesJson.map((voteJson) => voteJson.toString()).toList();

    return PollOptionModel(
      title: json['title'],
      votes: votes,
      id: json['id'],
    );
  }

  Map<String, dynamic> toJson() {
    List<dynamic> votesJson = votes.map((vote) => vote.toString()).toList();

    return {
      'title': title,
      'votes': votesJson,
      'id': id,
    };
  }
}
