import 'package:flutter/material.dart';
import 'package:myarts/common/constants/routes.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, Routes.login);
          },
          child: Text("Go to login"),
        ),
      ),
    );
  }
}
