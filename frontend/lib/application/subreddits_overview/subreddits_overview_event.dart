part of 'subreddits_overview_bloc.dart';

@freezed
class SubredditsOverviewEvent with _$SubredditsOverviewEvent {
  const factory SubredditsOverviewEvent.started() = _Started;

  const factory SubredditsOverviewEvent.subredditAdded(
    String subreddit,
    Uint8List logo,
  ) = _SubredditAdded;

  const factory SubredditsOverviewEvent.subredditRemoved(
    String subreddit,
  ) = _SubredditRemoved;

  const factory SubredditsOverviewEvent.subredditLogoUpdated(
    String subreddit,
    Uint8List logo,
  ) = _SubredditLogoUpdated;

  const factory SubredditsOverviewEvent.subredditSelected(
    String subreddit,
  ) = _SubredditSelected;
}
