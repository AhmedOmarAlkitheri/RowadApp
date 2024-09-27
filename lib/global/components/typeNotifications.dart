import 'package:flutter/material.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

Color type(String typeNotification) {
  return typeNotification == "تغذية"
      ? Color(AppColor.primaryColor)
      : typeNotification == "سكن"
          ? Color(AppColor.twoNotification)
          : typeNotification == "برامج"
              ? Color(AppColor.thereNotification)
              : Color(AppColor.fourNotification);
}
