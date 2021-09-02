import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:myarts/data/datasources/local/storage_heper.dart';

class StorageHelperImpl implements StorageHelper {
  Box? hive;
  StorageHelperImpl({@required this.hive});
  @override
  Future clear() async {
    await hive?.clear();
  }

  @override
  Future delete(String key) async {
    await hive?.delete(key);
  }

  @override
  String? getRefreshToken() {
    return hive?.get("refreshToken");
  }

  @override
  String? getToken() {
    return hive?.get("token");
  }

  @override
  read(String key) {
    return hive?.get(key);
  }

  @override
  Future saveRefreshToken(String refresh) async {
    return hive?.put("refreshToken", refresh);
  }

  @override
  Future saveToken(String token) async {
    return hive?.put("token", token);
  }

  @override
  Future write(String key, value) async {
    await hive?.put(key, value);
  }
}
