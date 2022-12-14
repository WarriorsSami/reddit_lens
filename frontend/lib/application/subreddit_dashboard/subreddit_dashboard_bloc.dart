import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:reddit_lens/domain/comments/comment_entity.dart';
import 'package:reddit_lens/domain/core/i_reddit_lens_api_client.dart';

import '../../domain/core/application_failure.dart';

part 'subreddit_dashboard_bloc.freezed.dart';

part 'subreddit_dashboard_event.dart';

part 'subreddit_dashboard_state.dart';

@injectable
class SubredditDashboardBloc
    extends Bloc<SubredditDashboardEvent, SubredditDashboardState> {
  final IRedditLensApiClient _rlApiClient;

  SubredditDashboardBloc(this._rlApiClient)
      : super(const SubredditDashboardState.initial()) {
    on<SubredditDashboardEvent>((event, emit) async {
      await event.map(
        subredditUnselected: (e) async {
          (await _rlApiClient.stopSubredditServer(e.subreddit)).fold(
            (f) => emit(SubredditDashboardState.loadFailure(f)),
            (_) => emit(const SubredditDashboardState.unloadServer()),
          );
        },
      );
    });
  }
}
