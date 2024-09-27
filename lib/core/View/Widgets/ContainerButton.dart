import 'package:flutter/material.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

class Containerbutton extends StatefulWidget {
  const Containerbutton(
      {super.key,
      this.allBorderRadius,
      required this.name,
      required this.onPressed});
  final double? allBorderRadius;
  final String name;
  final Function()? onPressed;

  @override
  State<Containerbutton> createState() => _ContainerbuttonState();
}

class _ContainerbuttonState extends State<Containerbutton> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(widget.allBorderRadius!),
          gradient: LinearGradient(
            colors: [
              const Color(AppColor.primaryColor),
              Color(AppColor.primaryColor)
            ],
            begin: AlignmentDirectional.bottomEnd,
            end: AlignmentDirectional.topStart,
          ),
        ),
        child: MaterialButton(
          child: Text(
            widget.name,
            style: TextStyle(
                color: Color(AppColor.secondaryTwoColor),
                fontWeight: FontWeight.bold),
          ),
          onPressed: widget.onPressed,
        ));
  }
}
