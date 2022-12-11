import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:reddit_lens/injection.config.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
void configureInjection(String environment) {
  getIt.init(environment: environment);
}
