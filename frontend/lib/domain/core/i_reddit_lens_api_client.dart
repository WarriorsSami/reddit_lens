import 'package:dartz/dartz.dart';
import 'package:reddit_lens/domain/core/application_exception.dart';

abstract class IRedditLensApiClient {
  Future<Either<ApplicationException, Unit>> startSubredditServer(
    String subreddit,
  );

  Future<Either<ApplicationException, Unit>> stopSubredditServer(
    String subreddit,
  );
}
