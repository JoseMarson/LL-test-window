import 'package:flutter/material.dart';

abstract class AppGradients {
  Gradient get backgroundCard1;
}

class AppGradientesDefault implements AppGradients {
  @override
  Gradient get backgroundCard1 => LinearGradient(
        colors: [Color(0XFFF0FBFF), Color(0XFFFFFFFF)],
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
      );
}
