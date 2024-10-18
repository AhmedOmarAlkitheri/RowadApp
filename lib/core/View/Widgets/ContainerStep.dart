import 'package:flutter/material.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

import '../../../global/theme/AppColor/appColor_LightMode.dart';

class Containerstep extends StatelessWidget {
  final bool isActive;

  const Containerstep({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive
            ? const Color(Appcolorlightmode.lightGreen)
            : const Color(Appcolorlightmode.whiteColor),
        border: Border.all(color: Colors.black),
      ),
      child: isActive ? Icon(Icons.check, color: Color(Appcolorlightmode.whiteColor)) : null,
    );
  }
}
