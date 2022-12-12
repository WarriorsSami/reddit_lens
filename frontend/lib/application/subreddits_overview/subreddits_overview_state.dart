part of 'subreddits_overview_bloc.dart';

@freezed
class SubredditsOverviewState with _$SubredditsOverviewState {
  const factory SubredditsOverviewState.initial() = _Initial;

  const factory SubredditsOverviewState.loadInProgress() = _LoadInProgress;

  const factory SubredditsOverviewState.loadSuccess(
    KtList<SubredditEntity> subreddits,
  ) = _LoadSuccess;

  const factory SubredditsOverviewState.loadFailure(
    ApplicationFailure subredditFailure,
  ) = _LoadFailure;

  const factory SubredditsOverviewState.loadServer(
    String subreddit,
  ) = _LoadServer;
}
