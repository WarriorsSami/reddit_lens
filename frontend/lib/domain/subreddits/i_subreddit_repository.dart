import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:reddit_lens/domain/subreddits/subreddit_entity.dart';
import 'package:reddit_lens/domain/core/application_exception.dart';

abstract class ISubredditRepository {
  Future<Unit> create(SubredditEntity entity);
  Future<Unit> delete(SubredditEntity entity);
  Future<Unit> update(SubredditEntity entity);
  Stream<Either<ApplicationException, KtList<SubredditEntity>>> watchAll();
  Stream<Either<ApplicationException, KtList<SubredditEntity>>> watchByName(
      String name);
}
