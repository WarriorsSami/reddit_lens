import 'package:chopper/chopper.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:reddit_lens/domain/core/application_exception.dart';
import 'package:reddit_lens/infrastructure/core/api/subreddit_server_service.dart';
import 'package:reddit_lens/infrastructure/core/api/subreddit_websocket_service.dart';

import '../../../domain/core/i_reddit_lens_api_client.dart';

@Injectable(as: IRedditLensApiClient)
class RedditLensApiClient implements IRedditLensApiClient {
  final ChopperClient _httpClient = ChopperClient(
    baseUrl: "http://10.0.2.2:5000",
    services: [
      SubredditServerService.create(),
    ],
  );

  final SubredditWebsocketService _wsClient = SubredditWebsocketService();

  @override
  Future<Either<ApplicationException, Unit>> startSubredditServer(
    String subreddit,
  ) async {
    final ssService = _httpClient.getService<SubredditServerService>();

    final Map<String, dynamic> requestBody = {
      "all_servers": false,
      "subreddit": subreddit,
      "web_socket_port": "8080",
      "is_session_training": false,
    };
    final response = await ssService.startServer(requestBody);

    if (response.isSuccessful) {
      return right(unit);
    } else {
      return left(ApplicationException.httpFailure(
        response.error.toString(),
        response.statusCode,
      ));
    }
  }

  @override
  Future<Either<ApplicationException, Unit>> stopSubredditServer(
    String subreddit,
  ) async {
    final ssService = _httpClient.getService<SubredditServerService>();

    final Map<String, dynamic> requestBody = {
      "all_servers": false,
      "subreddit": subreddit,
      "web_socket_port": "8080",
      "is_session_training": false,
    };
    final response = await ssService.stopServer(requestBody);

    if (response.isSuccessful) {
      return right(unit);
    } else {
      return left(ApplicationException.httpFailure(
        response.error.toString(),
        response.statusCode,
      ));
    }
  }
}
