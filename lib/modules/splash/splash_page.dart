import 'package:flutter/material.dart';
import 'package:locallog_driver_interface/theme/app_theme.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(color: AppTheme.colors.backgroundSecundary),
        child: Image.asset(
          "assets/images/logo2.png",
        ),
      ),
    );
  }
}
