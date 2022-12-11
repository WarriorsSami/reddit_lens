import 'dart:convert';

import 'package:reddit_lens/domain/comments/comment_entity.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class SubredditWebsocketService {
  Stream<CommentEntity> getSubredditPosts() {
    final webSocket = WebSocketChannel.connect(Uri.parse('ws://10.0.2.2:8080'));

    return webSocket.stream
        .map((event) => CommentEntity.fromJson(jsonDecode(event)));
  }
}
