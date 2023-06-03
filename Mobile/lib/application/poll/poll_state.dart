import 'package:equatable/equatable.dart';

import '../../domain/poll/poll_model.dart';

class PollState extends Equatable {
  const PollState();

  @override
  List<Object> get props => [];
}

class PollInitial extends PollState {}

class PollLoading extends PollState {}

class PollLoaded extends PollState {
  Poll poll;

  PollLoaded(this.poll);
}

class PollsLoaded extends PollState {
  final List<dynamic> polls;

  const PollsLoaded([this.polls = const []]);

  @override
  List<Object> get props => [polls];

  @override
  String toString() => 'PollLoaded { polls: $polls }';
}

class PollsLoadFailure extends PollState {}

class PollAdded extends PollState {
  final dynamic poll;

  const PollAdded(this.poll);

  @override
  List<Object> get props => [poll];

  @override
  String toString() => 'PollAdded { poll: $poll }';
}

class PollsLoadSuccess extends PollState {
  final List<dynamic> polls;

  const PollsLoadSuccess([this.polls = const []]);

  @override
  List<Object> get props => [polls];

  @override
  String toString() => 'PollsLoadSuccess { polls: $polls }';
}
