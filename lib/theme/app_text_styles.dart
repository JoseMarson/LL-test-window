import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:locallog_driver_interface/theme/app_theme.dart';

abstract class AppTextStyles {
  TextStyle get card1Title;
  TextStyle get card2Title;
  TextStyle get card3E4Title;
  TextStyle get card1Description;
  TextStyle get card2Description;
  TextStyle get card3Description;
  TextStyle get card4Description;
  TextStyle get buttonOnline;
  TextStyle get searchingRoutes;
  TextStyle get searchingRoutes2;
  TextStyle get textBaseBold;
  TextStyle get onlineUserName;
  TextStyle get initialText;
}

class AppTextStylesDefault implements AppTextStyles {
  @override
  TextStyle get card1Title => GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: AppTheme.colors.card1Title,
      );
  @override
  TextStyle get card1Description => GoogleFonts.inter(
        fontSize: 13,
        color: AppTheme.colors.card1Description,
      );
  @override
  TextStyle get card2Title => GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: AppTheme.colors.card2Title,
      );
  @override
  TextStyle get card2Description => GoogleFonts.inter(
        fontSize: 12,
        color: AppTheme.colors.card2Description,
      );
  @override
  TextStyle get card3E4Title => GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w800,
        color: AppTheme.colors.card3E4Title,
      );
  @override
  TextStyle get card3Description => GoogleFonts.inter(
        fontSize: 13,
        color: AppTheme.colors.card3Description,
      );
  @override
  TextStyle get card4Description => GoogleFonts.inter(
        fontSize: 13,
        color: AppTheme.colors.card4Description,
      );
  @override
  TextStyle get buttonOnline => GoogleFonts.poppins(
        fontSize: 18,
        fontWeight: FontWeight.w800,
        color: AppTheme.colors.buttonOnline,
      );

  @override
  TextStyle get searchingRoutes => GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w800,
        color: AppTheme.colors.searchingRoutes,
      );
  @override
  TextStyle get searchingRoutes2 => GoogleFonts.inter(
        fontSize: 13,
        color: AppTheme.colors.searchingRoutes2,
      );
  @override
  TextStyle get textBaseBold => GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: AppTheme.colors.textColorBase,
      );
  @override
  TextStyle get onlineUserName => GoogleFonts.inter(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: AppTheme.colors.onlineUserName,
      );
  TextStyle get initialText => GoogleFonts.inter(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: AppTheme.colors.textColorBase,
      );
}
