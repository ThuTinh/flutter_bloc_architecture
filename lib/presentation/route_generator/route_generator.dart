import 'package:flutter/material.dart';
import 'package:myarts/presentation/features/features.dart';

class RouteGenerator {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    // final args = settings.arguments;
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case "/login":
        return MaterialPageRoute(builder: (_) => LoginScreen());
      default:
        return MaterialPageRoute(builder: (_) => NotFoundScreen());
    }
  }
}
