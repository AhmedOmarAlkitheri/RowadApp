import 'package:flutter/material.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

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
            ? const Color(AppColor.primaryColor)
            : const Color(AppColor.secondaryTwoColor),
        border: Border.all(color: Colors.black),
      ),
    );
  }
}
