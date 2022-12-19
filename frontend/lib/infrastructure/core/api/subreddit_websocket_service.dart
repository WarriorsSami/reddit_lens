import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:reddit_lens/di/config.dart';
import 'package:reddit_lens/domain/comments/comment_entity.dart';
import 'package:reddit_lens/domain/core/i_subreddit_websocket_service.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

@Injectable(as: ISubredditWebsocketService)
class SubredditWebsocketService implements ISubredditWebsocketService {
  @override
  Stream<CommentEntity> getSubredditCommentStream() {
    return WebSocketChannel.connect(
      Uri.parse(Config.wsBaseUrl),
    ).stream.map(
          (event) => CommentEntity.fromJson(jsonDecode(event)),
        );
  }
}
