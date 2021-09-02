import 'package:dio/dio.dart';
import 'package:myarts/injection_container.dart';

import '../../../data.dart';
import '../urls.dart';

class RefreshInterceptor extends Interceptor {
  Dio dio;

  RefreshInterceptor(this.dio);

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401 || err.response?.statusCode == 403) {
      lock();
      RequestOptions requestOptions = err.response!.requestOptions;
      final resultRefresh = await refreshToken();
      if (resultRefresh) {
        final options = new Options(method: requestOptions.method, contentType: requestOptions.contentType);
        unLock();
        dio
            .request(
          Urls.host + requestOptions.path,
          queryParameters: requestOptions.queryParameters,
          data: requestOptions.data,
          options: options,
        )
            .then((value) {
          return handler.resolve(value);
        }).catchError((Object e) {
          return handler.reject(err);
        });
      } else {
        unLock();
        return handler.reject(err);
      }
    } else {
      return handler.next(err);
    }
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    if (options.path.contains("secure")) {
      final storage = await inject.getAsync<StorageHelper>();
      final token = storage.getToken();
      final authorization = "Bearer $token";
      options.headers["authorization"] = authorization;
    }
    return handler.next(options);
  }

  void unLock() {
    dio.unlock();
    dio.interceptors.requestLock.unlock();
    dio.interceptors.responseLock.unlock();
  }

  void lock() {
    dio.lock();
    dio.interceptors.requestLock.lock();
    dio.interceptors.responseLock.lock();
  }

  Future<bool> refreshToken() async {
    try {
      final storage = inject.get<StorageHelper>();
      // final token = storage.getToken();
      // final refreshToken = storage.getRefreshToken();
      final response = await Dio().post(Urls.host + "here path", data: {"Here data"});
      if (response.statusCode == 200) {
        final newToken = response.data["token"];
        await storage.saveToken(newToken);
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }
}
