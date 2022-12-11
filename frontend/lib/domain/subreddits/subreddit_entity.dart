import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../infrastructure/core/db/database.dart';

part 'subreddit_entity.freezed.dart';

@freezed
class SubredditEntity with _$SubredditEntity {
  factory SubredditEntity({
    int? id,
    required String name,
    Uint8List? image,
  }) = _SubredditEntity;

  factory SubredditEntity.fromSubreddit(Subreddit subreddit) {
    return SubredditEntity(
      id: subreddit.id,
      name: subreddit.name,
      image: subreddit.image,
    );
  }
}
