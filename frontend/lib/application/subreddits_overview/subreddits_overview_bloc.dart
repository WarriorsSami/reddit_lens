import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:reddit_lens/domain/core/application_failure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/core/i_reddit_lens_api_client.dart';
import '../../domain/subreddits/i_subreddit_repository.dart';
import '../../domain/subreddits/subreddit_entity.dart';

part 'subreddits_overview_bloc.freezed.dart';

part 'subreddits_overview_event.dart';

part 'subreddits_overview_state.dart';

@injectable
class SubredditsOverviewBloc
    extends Bloc<SubredditsOverviewEvent, SubredditsOverviewState> {
  final ISubredditRepository _subredditRepository;
  final IRedditLensApiClient _rlApiClient;

  StreamSubscription<Either<ApplicationFailure, KtList<SubredditEntity>>>?
      _subredditStreamSubscription;

  SubredditsOverviewBloc(
    this._subredditRepository,
    this._rlApiClient,
  ) : super(const SubredditsOverviewState.initial()) {
    on<SubredditsOverviewEvent>((event, emit) async {
      await event.map(
        subredditsRetrieved: (e) async {
          emit(const SubredditsOverviewState.loadInProgress());
          await _subredditStreamSubscription?.cancel();
          _subredditStreamSubscription = _subredditRepository.watchAll().listen(
                (failureOrSubreddits) => add(
                  SubredditsOverviewEvent.subredditReceived(
                    failureOrSubreddits,
                  ),
                ),
              );
        },
        subredditReceived: (e) async {
          emit(
            e.failureOrSubreddits.fold(
              (f) => SubredditsOverviewState.loadFailure(f),
              (subreddits) => SubredditsOverviewState.loadSuccess(subreddits),
            ),
          );
        },
        subredditRemoved: (e) async {
          emit(const SubredditsOverviewState.loadInProgress());
          (await _subredditRepository.delete(
            SubredditEntity(
              name: e.subreddit,
            ),
          ))
              .fold(
            (f) => emit(SubredditsOverviewState.loadFailure(f)),
            (_) => add(const SubredditsOverviewEvent.subredditsRetrieved()),
          );
        },
        subredditSelected: (e) async {
          emit(const SubredditsOverviewState.loadInProgress());
          final response = await _rlApiClient.startSubredditServer(e.subreddit);
          response.fold(
            (failure) => emit(SubredditsOverviewState.loadFailure(failure)),
            (server) => emit(SubredditsOverviewState.loadServer(e.subreddit)),
          );
          if (response.isLeft()) {
            add(const SubredditsOverviewEvent.subredditsRetrieved());
          }
        },
      );
    });
  }

  @override
  Future<void> close() async {
    await _subredditStreamSubscription?.cancel();
    return super.close();
  }
}
