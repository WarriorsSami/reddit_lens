part of 'subreddit_dashboard_bloc.dart';

@freezed
class SubredditDashboardEvent with _$SubredditDashboardEvent {
  const factory SubredditDashboardEvent.subredditUnselected(String subreddit) =
      _SubredditUnselected;
}
