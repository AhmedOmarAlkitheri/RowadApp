import 'package:flutter/material.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

import '../../../global/theme/AppColor/appColor_LightMode.dart';

class Line extends StatelessWidget {
  const Line({super.key, required this.height, required this.width});
  final double height, width;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      color: const Color(Appcolorlightmode.blackColor),
    );
  }
}
