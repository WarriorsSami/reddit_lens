part of 'subreddit_form_bloc.dart';

@freezed
class SubredditFormState with _$SubredditFormState {
  factory SubredditFormState.initial() = _Initial;
  const factory SubredditFormState.savedSuccessfully() = _SavedSuccessfully;
}
