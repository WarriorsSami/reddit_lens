import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class Config {
  static final String apiBaseUrl = dotenv.env['RL_API_URL']!;
  static final String wsBaseUrl = dotenv.env['RL_WS_URL']!;
  static final String wsPort = dotenv.env['RL_WS_PORT']!;
}
