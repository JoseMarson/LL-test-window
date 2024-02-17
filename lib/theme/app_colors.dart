import 'package:flutter/material.dart';

abstract class AppColors {
  Color get background;
  Color get backgroundSecundary;
  Color get title;
  Color get offlineName;
  Color get onlineName;
  Color get card1Title;
  Color get card2Title;
  Color get card3E4Title;
  Color get backgroundCard2;
  Color get backgroundCard3;
  Color get backgroundCard4;
  Color get card1Description;
  Color get card2Description;
  Color get card3Description;
  Color get card4Description;
  Color get buttonOnline;
  Color get searchingRoutes;
  Color get searchingRoutes2;
  Color get textColorBase;
  Color get onlineUserName;
  Color get buttonOnlineText;
}

class AppColorsDefault implements AppColors {
  @override
  Color get background => Color(0xFFFFFFFFFF);
  @override
  Color get backgroundSecundary => Color(0xFF000000);
  @override
  Color get offlineName => Color(0xFFFFFFFFFF);
  @override
  Color get onlineName => Color(0xFFFFFFFFFF);
  @override
  Color get onlineUserName => Color(0xFF008000);
  @override
  Color get title => Color(0xFFFFFFFFFF);
  @override
  Color get backgroundCard2 => Color(0xFFFFFEE5);
  @override
  Color get backgroundCard3 => Color(0XFF085B53);
  @override
  Color get backgroundCard4 => Color(0XFF000000);
  @override
  Color get card1Title => Color(0XFF0097e7);
  @override
  Color get card2Title => Color(0XFFFB5A21);
  @override
  Color get card3E4Title => Color(0XFFFFFFFF);
  @override
  Color get card1Description => Color(0XFF000000);
  @override
  Color get card2Description => Color(0XFF000000);
  @override
  Color get card3Description => Color(0XFFFFFFFF);
  @override
  Color get card4Description => Color(0XFFFFFFFF);
  @override
  Color get buttonOnline => Color(0XFF00B73E);
  @override
  Color get searchingRoutes => Color(0XFF2196f3);
  @override
  Color get searchingRoutes2 => Color(0XFF000000);
  @override
  Color get textColorBase => Color(0XFF000000);
  @override
  Color get buttonOnlineText => Color(0XFFFFFFFF);
}
