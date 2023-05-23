import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:pos_brandimic/di/injection_container.config.dart';

GetIt getIt = GetIt.instance;

@injectableInit
Future<void> configure() => getIt.init();
