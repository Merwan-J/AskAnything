import 'dart:ffi';

import 'package:askanything/domain/poll/poll_failure.dart';
import 'package:askanything/infrastructure/poll/poll_api.dart';
import 'package:dartz/dartz.dart';

import '../../domain/poll/poll_model.dart';

class PollRepository {
  PollApi _pollApi;

  PollRepository(this._pollApi);

  Future<Either<PollFailure, List<Poll>>> getPolls() async {
    try {
      var polls = await _pollApi.getPolls();
      return right(polls);
    } catch (e) {
      return left(PollFailure(message: 'Failed to load polls'));
    }
  }

  Future<Either<PollFailure, Poll>> getPollById(String id) async {
    try {
      var poll = await _pollApi.getPollById(id);
      return right(poll);
    } catch (e) {
      return left(PollFailure(message: 'Failed to load poll'));
    }
  }

  Future<Either<PollFailure, Poll>> createPoll(Poll poll) async {
    try {
      var pollResponse = await _pollApi.createPoll(poll);
      return right(pollResponse);
    } catch (e) {
      return left(PollFailure(message: 'Failed to create poll'));
    }
  }

  Future<Either<PollFailure, Poll>> updatePoll(Poll poll) async {
    try {
      var pollResponse = await _pollApi.updatePoll(poll);
      return right(pollResponse);
    } catch (e) {
      return left(PollFailure(message: 'Failed to update poll'));
    }
  }

  Future<Either<PollFailure, Unit>> deletePoll(String id) async {
    try {
      await _pollApi.deletePoll(id);
      return right(unit);
    } catch (e) {
      return left(PollFailure(message: 'Failed to delete poll'));
    }
  }

  Future<Either<PollFailure, Poll>> votePoll(String id, String optionId) async {
    try {
      var pollResponse = await _pollApi.votePoll(id, optionId);
      return right(pollResponse);
    } catch (e) {
      return left(PollFailure(message: 'Failed to vote poll'));
    }
  }

  Future<Either<PollFailure, Poll>> unvotePoll(
      String id, String optionId) async {
    try {
      var pollResponse = await _pollApi.unvotePoll(id, optionId);
      return right(pollResponse);
    } catch (e) {
      return left(PollFailure(message: 'Failed to unvote poll'));
    }
  }
}
