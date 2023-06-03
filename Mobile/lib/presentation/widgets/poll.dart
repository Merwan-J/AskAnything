import 'package:askanything/domain/poll/poll_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polls/flutter_polls.dart';

class PollW extends StatelessWidget {
  PollW({super.key});
  Map<String, dynamic> dummyPoll = {
    "pollId": '60f8c5d5d8e9a20015c7c9f5', // replace with a valid poll ID
    "pollTitle": 'What is your favorite color?',
    "pollOptions": [
      {
        "option": {
          "title": 'Red',
          "votes": [],
          "id": 1,
        },
      },
      {
        'option': {
          'title': 'Blue',
          'votes': [],
          'id': 2,
        },
      },
      {
        'option': {
          'title': 'Green',
          'votes': [],
          'id': 3,
        },
      },
    ],
    'author': '60f8c5d5d8e9a20015c7c9f5', // replace with a valid user ID
    'voteText': 'Select your favorite color',
    "createdAt": '2021-07-22T15:00:00.000Z',
    "updatedAt": '2021-07-22T15:00:00.000Z',
  };

  @override
  Widget build(BuildContext context) {
    Poll poll = Poll.fromJson(dummyPoll);
    List<PollOption>? pollOptionUI = poll.pollOptions.map((option) {
      return PollOption(
        id: option.id,
        title: Text(option.title),
        votes: option.votes.length,
      );
    }).toList();

    return FlutterPolls(
      pollId: poll.pollId,
      onVoted: (pollOption, newTotalVotes) {
        print('Voted for ${pollOption.title}');
        return Future.delayed(Duration(seconds: 1));
      },
      pollTitle: Text(poll.pollTitle),
      pollOptions: pollOptionUI,
    );
  }
}
