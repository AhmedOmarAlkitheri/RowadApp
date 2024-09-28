import 'package:flutter/material.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

Color type(String typeNotification) {
  return typeNotification == "تغذية"
      ? const Color(AppColor.primaryColor)
      : typeNotification == "تسكين أولي"
          ? const Color(AppColor.twoNotification)
          : typeNotification == "تسكين سنوي"
              ? const Color(AppColor.thereNotification)
              : const Color(AppColor.fourNotification);
}
