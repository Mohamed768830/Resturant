import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class AppModule {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
  @lazySingleton
  InternetConnectionChecker get internetChecker => InternetConnectionChecker();

  /*@lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;
*/
  @lazySingleton
  Dio get dio {
    final aDio = Dio(
      BaseOptions(
        baseUrl: "http://biowave-portal.com/api/",
        connectTimeout: 30000,
        receiveTimeout: 30000,
        sendTimeout: 30000,
        followRedirects: true,
        headers: {
          "Accept": "application/json",
          "Content-Type": "application/json",
          "X-Requested-With": "XMLHttpRequest",
        },
      ),
    );
    if (kDebugMode) {
      aDio.interceptors.add(
        LogInterceptor(
          requestBody: true,
          responseBody: true,
          logPrint: (log) => debugPrint(log.toString()),
        ),
      );
    }
    return aDio;
  }
}
