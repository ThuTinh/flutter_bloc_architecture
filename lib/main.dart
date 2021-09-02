import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:myarts/myarts_app.dart';
import 'package:path_provider/path_provider.dart';

import 'injection_container.dart';

void main() async {
  Bloc.observer = MyArtsBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  final documentDirectory = await getApplicationDocumentsDirectory();
  Hive.init(documentDirectory.path);
  initInjectContainer();
  runApp(MyArtsApp());
}

class MyArtsBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    print('[BLOC] ${bloc.runtimeType} ${change.currentState.runtimeType} -> ${change.nextState.runtimeType}');
    super.onChange(bloc, change);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    print('[BLOC] ${bloc.runtimeType} $error $stackTrace');
    super.onError(bloc, error, stackTrace);
  }
}
