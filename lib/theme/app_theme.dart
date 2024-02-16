import 'package:flutter/material.dart';
import 'package:locallog_driver_interface/theme/app_colors.dart';
import 'package:locallog_driver_interface/theme/app_gradients.dart';
import 'package:locallog_driver_interface/theme/app_text_styles.dart';

class AppTheme {
  static AppColors get colors => AppColorsDefault();
  static AppGradients get gradients => AppGradientesDefault();
  static AppTextStyles get textStyles => AppTextStylesDefault();
  static ButtonStyle get buttonOnline {
    return ElevatedButton.styleFrom(
      primary: AppTheme.colors.buttonOnline,
    );
  }
}
