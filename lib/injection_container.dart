import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';

import 'data/data.dart';

final inject = GetIt.instance;

Future<void> initInjectContainer() async {
  final hive = await Hive.openBox("myarts");

  // Storage
  inject.registerLazySingleton<StorageHelper>(() => StorageHelperImpl(hive: hive));

  // Repository
}
