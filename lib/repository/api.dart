import 'package:dio/dio.dart';
import 'package:sweets_app_sample/config/app_config.dart';

class Api {
  Api() {
    // タイムアウト設定
    dio.options.connectTimeout = 5000;
    // ログ設定
    if (!AppConfig().isRelease()) {
      dio.interceptors.add(LogInterceptor(
        responseBody: true,
        request: true,
      ));
    }
  }

  // API通信を行う実態
  final Dio dio = Dio();

  // stabを使うかの判定
  bool isStab = false;
}
