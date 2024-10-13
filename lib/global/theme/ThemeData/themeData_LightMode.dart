import 'package:flutter/material.dart';
import 'package:rowadapp/global/constraints/app_color.dart';
import 'package:rowadapp/global/theme/AppColor/appColor_LightMode.dart';

ThemeData lightMode() {
  return ThemeData(
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(
      backgroundColor: Color(Appcolorlightmode.primaryColor),
      titleTextStyle: TextStyle(color: Colors.white),
    ),
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: Color(Appcolorlightmode.primaryColor),
      onPrimary: Color(Appcolorlightmode.secondaryColor),
      secondary: Color(Appcolorlightmode.secondColorbutton),
      onSecondary: Color(Appcolorlightmode.secondarythereColor),
      error: Color(Appcolorlightmode.primaryColor),
      onError: Color(Appcolorlightmode.secondarythereColor),
      surface: Color(Appcolorlightmode.colorWhite),
      onSurface: Color(Appcolorlightmode.secondaryColor),
      background: Color(Appcolorlightmode.colorWhite),
      onBackground: Color(Appcolorlightmode.secondaryColor),
    ),
    scaffoldBackgroundColor: Color(Appcolorlightmode.colorWhite),
    drawerTheme: DrawerThemeData(
      backgroundColor: Colors.white,
    ),
  );
}
