// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:reddit_lens/application/subreddits_overview/subreddits_overview_bloc.dart'
    as _i11;
import 'package:reddit_lens/domain/comments/i_comment_repository.dart' as _i3;
import 'package:reddit_lens/domain/core/i_reddit_lens_api_client.dart' as _i6;
import 'package:reddit_lens/domain/subreddits/i_subreddit_repository.dart'
    as _i8;
import 'package:reddit_lens/infrastructure/comments/comment_repository.dart'
    as _i4;
import 'package:reddit_lens/infrastructure/core/api/reddit_lens_api_client.dart'
    as _i7;
import 'package:reddit_lens/infrastructure/core/api/subreddit_server_service.dart'
    as _i12;
import 'package:reddit_lens/infrastructure/core/api/subreddit_websocket_service.dart'
    as _i5;
import 'package:reddit_lens/infrastructure/core/db/database.dart' as _i10;
import 'package:reddit_lens/infrastructure/subreddits/subreddit_repository.dart'
    as _i9;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.ICommentRepository>(
        () => _i4.CommentRepository(gh<_i5.SubredditWebsocketService>()));
    gh.factory<_i6.IRedditLensApiClient>(() => _i7.RedditLensApiClient());
    gh.factory<_i8.ISubredditRepository>(
        () => _i9.SubredditRepository(gh<_i10.AppDb>()));
    gh.factory<_i11.SubredditsOverviewBloc>(() => _i11.SubredditsOverviewBloc(
          gh<_i8.ISubredditRepository>(),
          gh<_i12.SubredditServerService>(),
        ));
    return this;
  }
}
