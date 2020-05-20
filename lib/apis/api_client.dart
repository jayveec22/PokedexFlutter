import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';

typedef AccessTokenProvider = Future<String> Function();
typedef OnInvalidToken = void Function({Error error});

class ApiClient {
  ApiClient({
    @required this.baseUrl,
    this.onInvalidToken,
  }) : assert(baseUrl != null) {
    dio = Dio()
      ..options.baseUrl = baseUrl
      ..interceptors.add(
        InterceptorsWrapper(
          onRequest: (RequestOptions options) async {
            dio.interceptors.requestLock.lock();
            options.headers = <String, dynamic>{
              'Accept': 'application/json',
              'content-type': 'application/json',
            };
            dio.interceptors.requestLock.unlock();
            return options;
          },
          onError: (DioError error) {
            if (error.response?.statusCode != null &&
                error.response.statusCode == 401) {
              if (onInvalidToken != null) {
                onInvalidToken();
              }
            }
          },
        ),
      )
      ..interceptors.add(
        LogInterceptor(
          responseBody: true,
          requestBody: true,
          request: true,
        ),
      );
  }

  final String baseUrl;
  final OnInvalidToken onInvalidToken;
  Dio dio;
}
