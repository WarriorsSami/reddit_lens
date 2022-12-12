import 'dart:typed_data';

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

  SubredditsOverviewBloc(
    this._subredditRepository,
    this._rlApiClient,
  ) : super(const SubredditsOverviewState.initial()) {
    on<SubredditsOverviewEvent>((event, emit) async {
      await event.map(
        started: (e) async {
          emit(const SubredditsOverviewState.loadInProgress());
          _subredditRepository.watchAll().listen(
                (failureOrSubreddits) => failureOrSubreddits.fold(
                  (failure) => emit(
                    SubredditsOverviewState.loadFailure(failure),
                  ),
                  (subreddits) => emit(
                    SubredditsOverviewState.loadSuccess(subreddits),
                  ),
                ),
              );
        },
        subredditAdded: (e) {
          emit(const SubredditsOverviewState.loadInProgress());
          _subredditRepository.create(
            SubredditEntity(
              name: e.subreddit,
              image: e.logo,
            ),
          );
          add(const SubredditsOverviewEvent.started());
        },
        subredditRemoved: (e) {
          emit(const SubredditsOverviewState.loadInProgress());
          _subredditRepository.delete(
            SubredditEntity(
              name: e.subreddit,
            ),
          );
          add(const SubredditsOverviewEvent.started());
        },
        subredditLogoUpdated: (e) {
          emit(const SubredditsOverviewState.loadInProgress());
          _subredditRepository.update(
            SubredditEntity(
              name: e.subreddit,
              image: e.logo,
            ),
          );
          add(const SubredditsOverviewEvent.started());
        },
        subredditSelected: (e) async {
          emit(const SubredditsOverviewState.loadInProgress());
          final response = await _rlApiClient.startSubredditServer(e.subreddit);
          response.fold(
            (failure) => emit(
              SubredditsOverviewState.loadFailure(failure),
            ),
            (server) => emit(
              SubredditsOverviewState.loadServer(e.subreddit),
            ),
          );
        },
      );
    });
  }
}
