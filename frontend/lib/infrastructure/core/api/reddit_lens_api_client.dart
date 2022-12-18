import 'package:chopper/chopper.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:reddit_lens/di/config.dart';
import 'package:reddit_lens/domain/core/application_failure.dart';
import 'package:reddit_lens/domain/core/i_reddit_lens_api_client.dart';
import 'package:reddit_lens/infrastructure/core/api/subreddit_server_service.dart';

@Injectable(as: IRedditLensApiClient)
class RedditLensApiClient implements IRedditLensApiClient {
  final ChopperClient _httpClient;

  RedditLensApiClient(
    this._httpClient,
  );

  @override
  Future<Either<ApplicationFailure, Unit>> startSubredditServer(
    String subreddit,
  ) async {
    final ssService = _httpClient.getService<SubredditServerService>();

    final Map<String, String> requestBody = {
      "all_servers": "false",
      "subreddit": subreddit,
      "web_socket_port": Config.wsPort,
      "is_training_session": "false",
    };
    try {
      final response = await ssService.startServer(requestBody);

      if (response.isSuccessful) {
        return right(unit);
      } else {
        return left(ApplicationFailure.httpFailure(
          response.error.toString(),
          response.statusCode,
        ));
      }
    } catch (e) {
      return left(ApplicationFailure.httpFailure(e.toString(), 500));
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
      "is_training_session": "false",
    };
    try {
      final response = await ssService.stopServer(requestBody);

      if (response.isSuccessful) {
        return right(unit);
      } else {
        return left(ApplicationFailure.httpFailure(
          response.error.toString(),
          response.statusCode,
        ));
      }
    } catch (e) {
      return left(ApplicationFailure.httpFailure(e.toString(), 500));
    }
  }
}
