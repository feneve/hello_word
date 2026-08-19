import 'package:flutter/material.dart';
import 'package:my_app/app_controller.dart';
import 'package:my_app/home_page.dart';
import 'package:my_app/login_page.dart';

class AppWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            primaryColor: Colors.blueAccent,
            brightness: AppController.instance.isDartTheme
                ? Brightness.dark
                : Brightness.light,
          ),
         initialRoute: '/',
         routes: {
          '/':(context) => LoginPage(),
          '/home':(context) => Homepage(),
         },
        );
      },
    );
  }
}
