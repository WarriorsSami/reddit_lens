import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:reddit_lens/domain/subreddits/subreddit_entity.dart';

import '../../domain/subreddits/i_subreddit_repository.dart';

part 'subreddit_form_bloc.freezed.dart';

part 'subreddit_form_event.dart';

part 'subreddit_form_state.dart';

@injectable
class SubredditFormBloc extends Bloc<SubredditFormEvent, SubredditFormState> {
  final ISubredditRepository _subredditRepository;

  SubredditFormBloc(this._subredditRepository)
      : super(SubredditFormState.initial()) {
    on<SubredditFormEvent>((event, emit) async {
      await event.map(
        saved: (e) async {
          _subredditRepository.create(
            SubredditEntity(
              name: e.name,
            ),
          );
          emit(const SubredditFormState.savedSuccessfully());
        },
      );
    });
  }
}
