import 'package:flutter/material.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

class Roundedbutton extends StatelessWidget {
  GestureTapCallback? event;
  double? height;
  double? width;
  double? fontSize;
  late String text;
  Roundedbutton(
      {super.key,
      this.event,
      this.fontSize,
      this.height,
      this.width,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: event,
      child: Container(
        height: height ?? 43,
        width: width ?? 137,
        decoration: BoxDecoration(
          color: Color(AppColor.primaryColor),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              blurRadius: 3,
              // spreadRadius: 2,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: fontSize ?? 20, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
