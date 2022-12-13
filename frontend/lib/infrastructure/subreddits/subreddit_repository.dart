import 'package:dartz/dartz.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:reddit_lens/domain/subreddits/i_subreddit_repository.dart';
import 'package:reddit_lens/domain/subreddits/subreddit_entity.dart';
import 'package:reddit_lens/domain/core/application_failure.dart';

import '../core/db/database.dart';

@Injectable(as: ISubredditRepository)
class SubredditRepository implements ISubredditRepository {
  final AppDb _appDb = AppDb();

  @override
  Future<Unit> create(SubredditEntity entity) {
    final SubredditsCompanion entry = SubredditsCompanion.insert(
      name: entity.name,
    );
    return _appDb.subreddits.insertOne(entry).then((_) => unit);
  }

  @override
  Future<Unit> delete(SubredditEntity entity) {
    final SubredditsCompanion entry = SubredditsCompanion(
      id: Value(entity.id!),
      name: Value(entity.name),
    );
    return _appDb.subreddits.deleteOne(entry).then((_) => unit);
  }

  @override
  Future<Unit> update(SubredditEntity entity) {
    final SubredditsCompanion entry = SubredditsCompanion(
      id: Value(entity.id!),
      name: Value(entity.name),
    );
    return _appDb.update(_appDb.subreddits).replace(entry).then((_) => unit);
  }

  @override
  Stream<Either<ApplicationFailure, KtList<SubredditEntity>>> watchAll() {
    return _appDb
        .select(_appDb.subreddits)
        .watch()
        .map(
          (rows) => right<ApplicationFailure, KtList<SubredditEntity>>(
            rows
                .map((row) => SubredditEntity.fromSubreddit(row))
                .toImmutableList(),
          ),
        )
        .handleError((error) {
      return left(ApplicationFailure.infrastructureFailure(error.toString()));
    });
  }

  @override
  Stream<Either<ApplicationFailure, KtList<SubredditEntity>>> watchByName(
      String name) {
    final MultiSelectable<Subreddit> query = _appDb.select(_appDb.subreddits)
      ..where((subreddit) => subreddit.name.contains(name));

    return query
        .watch()
        .map(
          (rows) => right<ApplicationFailure, KtList<SubredditEntity>>(
            rows
                .map((row) => SubredditEntity.fromSubreddit(row))
                .toImmutableList(),
          ),
        )
        .handleError((error) {
      return left(ApplicationFailure.infrastructureFailure(error.toString()));
    });
  }
}
