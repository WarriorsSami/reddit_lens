part of 'subreddit_dashboard_bloc.dart';

@freezed
class SubredditDashboardState with _$SubredditDashboardState {
  const factory SubredditDashboardState.initial() = _Initial;
  const factory SubredditDashboardState.loadInProgress() = _LoadInProgress;
  const factory SubredditDashboardState.loadSuccess(
      KtList<CommentEntity> subredditComments) = _LoadSuccess;
  const factory SubredditDashboardState.loadFailure(
      ApplicationFailure subredditFailure) = _LoadFailure;
  const factory SubredditDashboardState.unloadServer() = _UnloadServer;
}
