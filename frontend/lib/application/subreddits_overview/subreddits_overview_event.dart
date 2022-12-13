part of 'subreddits_overview_bloc.dart';

@freezed
class SubredditsOverviewEvent with _$SubredditsOverviewEvent {
  const factory SubredditsOverviewEvent.started() = _Started;

  const factory SubredditsOverviewEvent.subredditAdded(
    String subreddit,
  ) = _SubredditAdded;

  const factory SubredditsOverviewEvent.subredditRemoved(
    String subreddit,
  ) = _SubredditRemoved;

  const factory SubredditsOverviewEvent.subredditSelected(
    String subreddit,
  ) = _SubredditSelected;
}
