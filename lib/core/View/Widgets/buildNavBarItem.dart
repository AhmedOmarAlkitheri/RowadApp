import 'package:flutter/material.dart';
import 'package:rowadapp/core/View/Widgets/colorWidget.dart';
import 'package:rowadapp/global/constraints/app_color.dart';
import 'package:rowadapp/global/theme/AppColor/appColor_DarkMode.dart';
import 'package:rowadapp/global/theme/AppColor/appColor_LightMode.dart';

Widget buildNavBarItem({
  required IconData icon,
  required bool isSelected,
  required Function() onTap,
  required Buildcontext
}) {
 //  bool isDarkMode = Theme.of(Buildcontext).brightness == Brightness.dark;
  return GestureDetector(
    onTap: onTap,
    child: AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
        boxShadow: [
          if (isSelected)
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              blurRadius: 3,
              offset: const Offset(0, 4),
            ),
        ],
        borderRadius: BorderRadius.circular(15),
       color: isSelected
    ? ( ColorMethod(Buildcontext, AppcolorDarkmode.colorBlack  ,Appcolorlightmode.primaryColor))
    : (
      Colors.transparent),
           
      ),
      alignment: Alignment.center,
      height: 40,
      width: 60,
     
      child: Icon(
        icon,
        color: isSelected ? Colors.white : Colors.black,
      ),
    ),
  );
}
