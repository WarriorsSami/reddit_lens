// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:chopper/chopper.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:web_socket_channel/web_socket_channel.dart' as _i11;

import '../application/subreddit_dashboard/subreddit_dashboard_bloc.dart'
    as _i14;
import '../application/subreddit_form/subreddit_form_bloc.dart' as _i9;
import '../application/subreddits_overview/subreddits_overview_bloc.dart'
    as _i10;
import '../domain/core/i_reddit_lens_api_client.dart' as _i5;
import '../domain/core/i_subreddit_websocket_service.dart' as _i12;
import '../domain/subreddits/i_subreddit_repository.dart' as _i7;
import '../infrastructure/core/api/reddit_lens_api_client.dart' as _i6;
import '../infrastructure/core/api/subreddit_websocket_service.dart' as _i13;
import '../infrastructure/core/db/database.dart' as _i3;
import '../infrastructure/subreddits/subreddit_repository.dart' as _i8;
import 'api_injectable_module.dart'
    as _i15; // ignore_for_file: unnecessary_lambdas

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
  final apiInjectableModule = _$ApiInjectableModule();
  gh.lazySingleton<_i3.AppDb>(() => _i3.AppDb());
  gh.lazySingleton<_i4.ChopperClient>(() => apiInjectableModule.chopperClient);
  gh.factory<_i5.IRedditLensApiClient>(
      () => _i6.RedditLensApiClient(get<_i4.ChopperClient>()));
  gh.factory<_i7.ISubredditRepository>(
      () => _i8.SubredditRepository(get<_i3.AppDb>()));
  gh.factory<_i9.SubredditFormBloc>(
      () => _i9.SubredditFormBloc(get<_i7.ISubredditRepository>()));
  gh.factory<_i10.SubredditsOverviewBloc>(() => _i10.SubredditsOverviewBloc(
        get<_i7.ISubredditRepository>(),
        get<_i5.IRedditLensApiClient>(),
      ));
  gh.lazySingleton<_i11.WebSocketChannel>(() => apiInjectableModule.wsClient);
  gh.factory<_i12.ISubredditWebsocketService>(
      () => _i13.SubredditWebsocketService(get<_i11.WebSocketChannel>()));
  gh.factory<_i14.SubredditDashboardBloc>(() => _i14.SubredditDashboardBloc(
        get<_i12.ISubredditWebsocketService>(),
        get<_i5.IRedditLensApiClient>(),
      ));
  return get;
}

class _$ApiInjectableModule extends _i15.ApiInjectableModule {}
