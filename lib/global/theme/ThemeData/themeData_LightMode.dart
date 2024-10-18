import 'package:flutter/material.dart';
import 'package:rowadapp/global/constraints/app_color.dart';
import 'package:rowadapp/global/theme/AppColor/appColor_LightMode.dart';

ThemeData lightMode() {
  return ThemeData(
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(
      backgroundColor: Color(Appcolorlightmode.lightGreen),
      titleTextStyle: TextStyle(color: Colors.white),
    ),
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: Color(Appcolorlightmode.lightGreen),
      onPrimary: Color(Appcolorlightmode.blackColor),
      secondary: Color(Appcolorlightmode.buttonSecondColor),
      onSecondary: Color(Appcolorlightmode.darkGreen),
      error: Color(Appcolorlightmode.lightGreen),
      onError: Color(Appcolorlightmode.darkGreen),
      surface: Color(Appcolorlightmode.whiteColor),
      onSurface: Color(Appcolorlightmode.blackColor),
      background: Color(Appcolorlightmode.whiteColor),
      onBackground: Color(Appcolorlightmode.blackColor),
    ),
    scaffoldBackgroundColor: Color(Appcolorlightmode.whiteColor),
    drawerTheme: DrawerThemeData(
      backgroundColor: Colors.white,
    ),
     fontFamily:'vazir-light'
  );
}
