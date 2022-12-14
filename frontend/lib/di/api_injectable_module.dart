import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';
import 'package:reddit_lens/infrastructure/core/api/subreddit_server_service.dart';

import 'config.dart';

@module
abstract class ApiInjectableModule {
  @lazySingleton
  ChopperClient get chopperClient => ChopperClient(
        baseUrl: Config.apiBaseUrl,
        services: [
          SubredditServerService.create(),
        ],
        converter: const JsonConverter(),
      );
}
