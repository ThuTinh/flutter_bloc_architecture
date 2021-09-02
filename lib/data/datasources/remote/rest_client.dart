import 'package:connectivity/connectivity.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import 'remote.dart';
import 'urls.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: Urls.host)
abstract class RestClient {
  factory RestClient(Dio dio, {String? baseUrl}) {
    dio.clear();
    dio.interceptors.addAll([
      RefreshInterceptor(dio),
      RetryConectionChangeIntereptor(
        requestRetrier: DioConnectivityRequestRetrier(
          Dio(BaseOptions(contentType: 'application/json; charset=UTF-8')),
          Connectivity(),
        ),
      ),
    ]);
    return _RestClient(dio, baseUrl: baseUrl);
  }

  @POST(Urls.login)
  Future login(@Body() dynamic data);
}
