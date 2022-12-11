import 'package:chopper/chopper.dart';

part 'subreddit_server_service.chopper.dart';

@ChopperApi(baseUrl: '/server')
abstract class SubredditServerService extends ChopperService {
  static SubredditServerService create([ChopperClient? client]) =>
      _$SubredditServerService(client);

  @Post(path: '/start')
  Future<Response> startServer(@Body() Map<String, dynamic> body);

  @Post(path: '/stop')
  Future<Response> stopServer(@Body() Map<String, dynamic> body);
}
