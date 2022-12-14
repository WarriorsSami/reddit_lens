part of 'subreddits_overview_bloc.dart';

@freezed
class SubredditsOverviewEvent with _$SubredditsOverviewEvent {
  const factory SubredditsOverviewEvent.subredditsRetrieved() =
      _SubredditsRetrieved;

  const factory SubredditsOverviewEvent.subredditRemoved(
    String subreddit,
  ) = _SubredditRemoved;

  const factory SubredditsOverviewEvent.subredditSelected(
    String subreddit,
  ) = _SubredditSelected;

  const factory SubredditsOverviewEvent.subredditReceived(
    Either<ApplicationFailure, KtList<SubredditEntity>> failureOrSubreddits,
  ) = _SubredditReceived;
}
