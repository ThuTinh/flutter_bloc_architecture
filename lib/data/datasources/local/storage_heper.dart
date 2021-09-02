abstract class StorageHelper {
  dynamic read(String key);

  Future write(String key, dynamic value);

  Future delete(String key);

  Future clear();

  Future saveRefreshToken(String refresh);

  Future saveToken(String token);

  String? getRefreshToken();

  String? getToken();
}
