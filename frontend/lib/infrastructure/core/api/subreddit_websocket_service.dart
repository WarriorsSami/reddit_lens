import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:reddit_lens/domain/comments/comment_entity.dart';
import 'package:reddit_lens/domain/core/i_subreddit_websocket_service.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

@Injectable(as: ISubredditWebsocketService)
class SubredditWebsocketService implements ISubredditWebsocketService {
  final WebSocketChannel _wsClient;

  SubredditWebsocketService(this._wsClient);

  @override
  Stream<CommentEntity> getSubredditPosts() {
    return _wsClient.stream.map((event) {
      print(event);
      return CommentEntity.fromJson(jsonDecode(event));
    }).asBroadcastStream();
  }

  @override
  Future<Unit> close() async {
    await _wsClient.sink.close();
    return unit;
  }
}
