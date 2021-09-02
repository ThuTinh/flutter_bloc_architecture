import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myarts/presentation/blocs/authentication/authentication_cubit.dart';
import 'package:myarts/presentation/presentaion.dart';
import 'package:sizer/sizer.dart';

import 'presentation/themes/themes.dart';

class MyArtsApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyArtsApp();
  }
}

class _MyArtsApp extends State<MyArtsApp> {
  @override
  void initState() {
    SystemChannels.textInput.invokeMethod('TextInput.hide');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      supportedLocales: [Locale('en'), Locale('ja')],
      path: 'assets/i18n',
      fallbackLocale: Locale('en'),
      child: Sizer(
        builder: (context, orientation, deviceType) {
          return MultiBlocProvider(
            providers: [
              BlocProvider<AuthenticationCubit>(
                create: (context) => AuthenticationCubit(),
              ),
            ],
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              initialRoute: "/",
              onGenerateRoute: RouteGenerator.generateRoutes,
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: context.locale,
              theme: LightTheme.themeData,
            ),
          );
        },
      ),
    );
  }
}
