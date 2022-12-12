import '../comments/comment_entity.dart';

abstract class ISubredditWebsocketService {
  Stream<CommentEntity> getSubredditPosts();
}
