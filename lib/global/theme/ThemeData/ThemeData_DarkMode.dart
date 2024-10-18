import 'package:flutter/material.dart';
import 'package:rowadapp/global/constraints/app_color.dart';
import 'package:rowadapp/global/theme/AppColor/appColor_DarkMode.dart';

ThemeData darkMode() {
  return ThemeData(
    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(AppcolorDarkmode.secondaryfourColor),
      titleTextStyle: TextStyle(color: Color(AppcolorDarkmode.secondaryColor)),
    ),
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(AppcolorDarkmode.primaryColor),
      onPrimary: Color(AppcolorDarkmode.secondaryColor),
      secondary: Color(AppcolorDarkmode.thereNotification),
      onSecondary: Color(AppcolorDarkmode.secondaryTwoColor),
      error: Color(AppcolorDarkmode.secondaryTwoColor),
      onError: Color(AppcolorDarkmode.secondaryTwoColor),
      surface: Color(AppcolorDarkmode.secondaryTwoColor),
      onSurface: Color(AppcolorDarkmode.secondaryTwoColor),
    ),
    scaffoldBackgroundColor: const Color(AppcolorDarkmode.secondaryfourColor),
    drawerTheme: const DrawerThemeData(
      backgroundColor: Color(AppcolorDarkmode.secondaryTHEREColor),
    ),
      fontFamily:'vazir-light'
  );
}
