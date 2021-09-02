import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';

import '../urls.dart';

class DioConnectivityRequestRetrier {
  final Dio dio;
  final Connectivity connectivity;

  DioConnectivityRequestRetrier(this.dio, this.connectivity);

  Future<Response> requestRetry(RequestOptions requestOptions) {
    StreamSubscription? streamSubscription;
    final responseCompleter = Completer<Response>();
    streamSubscription = connectivity.onConnectivityChanged.listen((connetResult) {
      if (connetResult != ConnectivityResult.none) {
        streamSubscription?.cancel();
        final options = new Options(method: requestOptions.method, contentType: requestOptions.contentType);
        responseCompleter.complete(dio.request(
          Urls.host + requestOptions.path,
          queryParameters: requestOptions.queryParameters,
          data: requestOptions.data,
          options: options,
        ));
      }
    });
    return responseCompleter.future;
  }
}
