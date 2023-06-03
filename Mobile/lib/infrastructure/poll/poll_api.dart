import 'dart:convert';

import 'package:askanything/util/custom_http_client.dart';

import '../../domain/poll/poll_model.dart';

class PollApi {
  final CustomHttpClient _customHttpClient;

  PollApi(this._customHttpClient);
  Future<List<Poll>> getPolls() async {
    var polls = await _customHttpClient.get("polls");

    if (polls.statusCode == 200) {
      List<dynamic> pollsJson = jsonDecode(polls.body);
      return pollsJson.map((poll) => Poll.fromJson(poll)).toList();
    } else {
      throw Exception("Failed to load polls"); //TODO: handle the exceptions
    }
  }

  Future<Poll> getPollById(String id) async {
    var poll = await _customHttpClient.get("polls/$id");

    if (poll.statusCode == 200) {
      return Poll.fromJson(jsonDecode(poll.body));
    } else {
      throw Exception("Failed to load poll"); //TODO: handle the exceptions
    }
  }

  Future<Poll> createPoll(Poll poll) async {
    var pollResponse =
        await _customHttpClient.post("polls", body: json.encode(poll.toJson()));

    if (pollResponse.statusCode == 201) {
      return Poll.fromJson(jsonDecode(pollResponse.body));
    } else {
      throw Exception("Failed to create poll"); //TODO: handle the exceptions
    }
  }

  Future<Poll> updatePoll(Poll poll) async {
    var pollResponse = await _customHttpClient.put("polls/${poll.pollId}",
        body: json.encode(poll.toJson()));

    if (pollResponse.statusCode == 200) {
      return Poll.fromJson(jsonDecode(pollResponse.body));
    } else {
      throw Exception("Failed to update poll"); //TODO: handle the exceptions
    }
  }

  Future<void> deletePoll(String id) async {
    var pollResponse = await _customHttpClient.delete("polls/$id");

    if (pollResponse.statusCode == 200) {
      return;
    } else {
      throw Exception("Failed to delete poll"); //TODO: handle the exceptions
    }
  }

  Future<Poll> votePoll(String id, String option) async {
    var pollResponse = await _customHttpClient.post("polls/$id/vote",
        body: json.encode({"option": option}));

    if (pollResponse.statusCode == 200) {
      return Poll.fromJson(jsonDecode(pollResponse.body));
    } else {
      throw Exception("Failed to vote poll"); //TODO: handle the exceptions
    }
  }

  Future<Poll> unvotePoll(String id, String option) async {
    var pollResponse = await _customHttpClient.post("polls/$id/unvote",
        body: json.encode({"option": option}));

    if (pollResponse.statusCode == 200) {
      return Poll.fromJson(jsonDecode(pollResponse.body));
    } else {
      throw Exception("Failed to unvote poll"); //TODO: handle the exceptions
    }
  }
}
