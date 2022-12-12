// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/subreddits_overview/subreddits_overview_bloc.dart' as _i9;
import 'domain/core/i_reddit_lens_api_client.dart' as _i7;
import 'domain/core/i_subreddit_websocket_service.dart' as _i5;
import 'domain/subreddits/i_subreddit_repository.dart' as _i3;
import 'infrastructure/core/api/reddit_lens_api_client.dart' as _i8;
import 'infrastructure/core/api/subreddit_websocket_service.dart' as _i6;
import 'infrastructure/subreddits/subreddit_repository.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.ISubredditRepository>(() => _i4.SubredditRepository());
  gh.factory<_i5.ISubredditWebsocketService>(
      () => _i6.SubredditWebsocketService());
  gh.factory<_i7.IRedditLensApiClient>(
      () => _i8.RedditLensApiClient(get<_i5.ISubredditWebsocketService>()));
  gh.factory<_i9.SubredditsOverviewBloc>(() => _i9.SubredditsOverviewBloc(
        get<_i3.ISubredditRepository>(),
        get<_i7.IRedditLensApiClient>(),
      ));
  return get;
}
