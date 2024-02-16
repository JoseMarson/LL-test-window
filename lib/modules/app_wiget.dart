import 'package:flutter/material.dart';
import 'package:locallog_driver_interface/modules/home/home_page.dart';
import 'package:locallog_driver_interface/modules/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "LocalLog",
      home: SplashPage(),
      initialRoute: "/home",
      routes: {
        "/splash": (context) => SplashPage(),
        "/home": (context) => HomePage(),
      },
    );
  }
}
