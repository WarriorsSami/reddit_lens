// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subreddit_server_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$SubredditServerService extends SubredditServerService {
  _$SubredditServerService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = SubredditServerService;

  @override
  Future<Response<dynamic>> startServer(Map<String, dynamic> body) {
    final String $url = '/server/start';
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> stopServer(Map<String, dynamic> body) {
    final String $url = '/server/stop';
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
