import 'package:dartz/dartz.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:reddit_lens/domain/subreddits/i_subreddit_repository.dart';
import 'package:reddit_lens/domain/subreddits/subreddit_entity.dart';
import 'package:reddit_lens/domain/core/application_failure.dart';

import '../core/db/database.dart';

@Injectable(as: ISubredditRepository)
class SubredditRepository implements ISubredditRepository {
  final AppDb _appDb;

  SubredditRepository(this._appDb);

  @override
  Future<Either<ApplicationFailure, Unit>> create(SubredditEntity entity) {
    final SubredditsCompanion entry = SubredditsCompanion.insert(
      name: entity.name,
    );

    try {
      return _appDb.subreddits.insertOne(entry).then((_) => right(unit));
    } on SqliteException catch (e) {
      return Future.value(
          left(ApplicationFailure.infrastructureFailure(e.message)));
    }
  }

  @override
  Future<Either<ApplicationFailure, Unit>> delete(
      SubredditEntity entity) async {
    final existingEntryId = await _getSubredditIdByName(entity.name);

    if (existingEntryId.isNone()) {
      return left(
        const ApplicationFailure.infrastructureFailure(
            'Subreddit not found to be deleted'),
      );
    }

    final SubredditsCompanion entry = SubredditsCompanion(
      id: Value(existingEntryId.getOrElse(() => 0)),
      name: Value(entity.name),
    );
    return _appDb.subreddits.deleteOne(entry).then((_) => right(unit));
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

  Future<Option<int>> _getSubredditIdByName(String name) async {
    final MultiSelectable<Subreddit> query = _appDb.select(_appDb.subreddits)
      ..where((subreddit) => subreddit.name.equals(name));

    final List<Subreddit> rows = await query.get();

    if (rows.isEmpty) {
      return none();
    } else {
      return some(rows.first.id);
    }
  }
}
