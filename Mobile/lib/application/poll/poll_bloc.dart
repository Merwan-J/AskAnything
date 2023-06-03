import 'package:askanything/application/poll/poll_event.dart';
import 'package:askanything/application/poll/poll_state.dart';
import 'package:askanything/domain/poll/poll_failure.dart';
import 'package:askanything/infrastructure/poll/poll_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
//poll events

import 'package:equatable/equatable.dart';

import '../../domain/poll/poll_model.dart';

class PollBloc extends Bloc<PollEvent, PollState> {
  PollRepository pollRepository;
  PollBloc({required this.pollRepository}) : super(PollInitial()) {
    on<PollCreate>((event, emit) async {
      emit(PollLoading());

      Either<PollFailure, Poll> poll =
          await pollRepository.createPoll(event.poll);

      poll.fold((l) => emit(PollsLoadFailure()), (r) => emit(PollLoaded(r)));
    });

    on<PollDeleted>((event, emit) async {
      emit(PollLoading());
      await pollRepository.deletePoll(event.poll.pollId);
      emit(PollLoaded(event.poll));
    });
  }
}
