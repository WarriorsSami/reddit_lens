import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';
import 'package:reddit_lens/di/injection.dart';
import 'package:reddit_lens/presentation/core/app_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.dev);
  await dotenv.load(fileName: ".env");

  runApp(AppWidget());
}
