import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:reddit_lens/domain/subreddits/subreddit_entity.dart';
import 'package:reddit_lens/domain/core/application_failure.dart';

abstract class ISubredditRepository {
  Future<Either<ApplicationFailure, Unit>> create(SubredditEntity entity);

  Future<Either<ApplicationFailure, Unit>> delete(SubredditEntity entity);

  Stream<Either<ApplicationFailure, KtList<SubredditEntity>>> watchAll();

  Stream<Either<ApplicationFailure, KtList<SubredditEntity>>> watchByName(
    String name,
  );
}
