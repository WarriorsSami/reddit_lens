import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:reddit_lens/domain/comments/comment_entity.dart';

import 'package:reddit_lens/domain/core/application_exception.dart';
import 'package:reddit_lens/infrastructure/core/api/subreddit_websocket_service.dart';

import '../../domain/comments/i_comment_repository.dart';

@Injectable(as: ICommentRepository)
class CommentRepository implements ICommentRepository {
  final SubredditWebsocketService _subredditWSService;

  CommentRepository(this._subredditWSService);

  @override
  Stream<Either<ApplicationException, CommentEntity>> watch() {
    return _subredditWSService
        .getSubredditPosts()
        .map((comment) => right(comment));
  }
}
