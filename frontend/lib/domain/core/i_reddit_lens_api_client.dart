import 'package:dartz/dartz.dart';
import 'package:reddit_lens/domain/core/application_failure.dart';

abstract class IRedditLensApiClient {
  Future<Either<ApplicationFailure, Unit>> startSubredditServer(
    String subreddit,
  );

  Future<Either<ApplicationFailure, Unit>> stopSubredditServer(
    String subreddit,
  );
}
