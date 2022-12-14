part of 'subreddit_form_bloc.dart';

@freezed
class SubredditFormEvent with _$SubredditFormEvent {
  const factory SubredditFormEvent.saved(String name) = _Saved;
}
