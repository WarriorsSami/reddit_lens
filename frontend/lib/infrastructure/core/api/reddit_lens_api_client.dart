import 'package:chopper/chopper.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:reddit_lens/domain/core/application_failure.dart';
import 'package:reddit_lens/domain/core/i_subreddit_websocket_service.dart';
import 'package:reddit_lens/infrastructure/core/api/subreddit_server_service.dart';
import 'package:reddit_lens/infrastructure/core/api/subreddit_websocket_service.dart';

import '../../../domain/core/i_reddit_lens_api_client.dart';
import '../config.dart';

@Injectable(as: IRedditLensApiClient)
class RedditLensApiClient implements IRedditLensApiClient {
  final ChopperClient _httpClient = ChopperClient(
    baseUrl: Config.apiBaseUrl,
    services: [
      SubredditServerService.create(),
    ],
    converter: const JsonConverter(),
  );

  final ISubredditWebsocketService _wsClient;

  RedditLensApiClient(this._wsClient);

  @override
  Future<Either<ApplicationFailure, Unit>> startSubredditServer(
    String subreddit,
  ) async {
    final ssService = _httpClient.getService<SubredditServerService>();

    final Map<String, String> requestBody = {
      "all_servers": "false",
      "subreddit": subreddit,
      "web_socket_port": Config.wsPort,
      "is_session_training": "false",
    };
    final response = await ssService.startServer(requestBody);

    if (response.isSuccessful) {
      return right(unit);
    } else {
      return left(ApplicationFailure.httpFailure(
        response.error.toString(),
        response.statusCode,
      ));
    }
  }

  @override
  Future<Either<ApplicationFailure, Unit>> stopSubredditServer(
    String subreddit,
  ) async {
    final ssService = _httpClient.getService<SubredditServerService>();

    final Map<String, String> requestBody = {
      "all_servers": "false",
      "subreddit": subreddit,
      "web_socket_port": Config.wsPort,
      "is_session_training": "false",
    };
    final response = await ssService.stopServer(requestBody);

    if (response.isSuccessful) {
      return right(unit);
    } else {
      return left(ApplicationFailure.httpFailure(
        response.error.toString(),
        response.statusCode,
      ));
    }
  }
}
