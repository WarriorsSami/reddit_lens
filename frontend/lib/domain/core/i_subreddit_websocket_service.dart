import 'package:dartz/dartz.dart';

import '../comments/comment_entity.dart';

abstract class ISubredditWebsocketService {
  Stream<CommentEntity> getSubredditPosts();
  Future<Unit> close();
}
