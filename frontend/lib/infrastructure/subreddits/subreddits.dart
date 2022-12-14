import 'package:drift/drift.dart';

class Subreddits extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength(min: 1, max: 30).unique()();
}
