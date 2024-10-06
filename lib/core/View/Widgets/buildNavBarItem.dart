import 'package:flutter/material.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

Widget buildNavBarItem({
  required IconData icon,
  required bool isSelected,
  required Function() onTap,
}) {
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
            ? const Color(AppColor.primaryColor)
            : Colors.transparent,
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
