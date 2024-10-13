
import 'package:flutter/material.dart';
import 'package:rowadapp/global/theme/ThemeData/ThemeData_DarkMode.dart';
import 'package:rowadapp/global/theme/ThemeData/themeData_LightMode.dart';
import 'package:rowadapp/helpers/Getstorage_helper.dart';

class ThemeModes with ChangeNotifier {
  bool _isSelected = false;
   Getstorage_helper getstorageHelper = Getstorage_helper.instance;
  ThemeData _themeMode = lightMode();
  ThemeModes();

  get themmode => _themeMode;
  get isSelected => _isSelected;
  ThemeData checkTheme() {
    getstorageHelper.writeToFile(key: "mode", value: _isSelected.toString());
    return bool.parse(getstorageHelper.readFrmFile("mode"))
        ? darkMode()
        : lightMode();
  }

  goToTheme(bool val) {
    if (getstorageHelper.readFrmFile("mode") == "true") {
      _themeMode = darkMode();
    } else {
      _themeMode = lightMode();
    }
    _isSelected = val; //!_isSelected;
    getstorageHelper.writeToFile(key: "mode", value: _isSelected.toString());
    notifyListeners();
  }
}
