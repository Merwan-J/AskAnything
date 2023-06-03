//poll events

import 'package:equatable/equatable.dart';

import '../../domain/poll/poll_model.dart';

abstract class PollEvent extends Equatable {
  const PollEvent();

  @override
  List<Object> get props => [];
}

class PollsLoadStarted extends PollEvent {}

class PollCreate extends PollEvent {
  final Poll poll;

  const PollCreate(this.poll);

  @override
  List<Object> get props => [poll];

  @override
  String toString() => 'PollCreate { poll: $poll }';
}

class PollAdded extends PollEvent {
  final Poll poll;

  const PollAdded(this.poll);

  @override
  List<Object> get props => [poll];

  @override
  String toString() => 'PollAdded { poll: $poll }';
}

class PollDeleted extends PollEvent {
  final Poll poll;

  const PollDeleted(this.poll);

  @override
  List<Object> get props => [poll];

  @override
  String toString() => 'PollDeleted { poll: $poll }';
}
