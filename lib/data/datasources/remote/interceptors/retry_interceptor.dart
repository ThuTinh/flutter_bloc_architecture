import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'dio_connectivity_request_retrier.dart';

class RetryConectionChangeIntereptor extends Interceptor {
  DioConnectivityRequestRetrier? requestRetrier;

  RetryConectionChangeIntereptor({@required this.requestRetrier});

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    if (_shouldRetry(err)) {
      try {
        final value = await requestRetrier?.requestRetry(err.requestOptions);
        handler.resolve(value!);
      } catch (e) {
        return handler.reject(err);
      }
    }
    return handler.reject(err);
  }

  bool _shouldRetry(DioError err) {
    return err.error != null && err.error is SocketException;
  }
}
