import 'package:reddit_lens/domain/comments/comment_entity.dart';

abstract class ISubredditWebsocketService {
  Stream<CommentEntity> getSubredditCommentStream();
}
