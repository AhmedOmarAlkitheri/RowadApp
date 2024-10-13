import 'package:flutter/material.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

class Containerbutton extends StatefulWidget {
  const Containerbutton(
      {super.key,
      required this.allBorderRadius,
      required this.name,
      required this.onPressed});
  final double allBorderRadius;
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
        borderRadius: BorderRadius.circular(widget.allBorderRadius),
        gradient: const LinearGradient(
          colors: [Color(AppColor.primaryColor), Color(AppColor.primaryColor)],
          begin: AlignmentDirectional.bottomEnd,
          end: AlignmentDirectional.topStart,
        ),
      ),
      child: MaterialButton(
        //  color: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(widget.allBorderRadius),
        ),
        onPressed: widget.onPressed,
        child: Text(
          widget.name,
          style: const TextStyle(
              color: Color(AppColor.secondaryTwoColor),
 fontFamily: 'vazir-medium',

                              // fontWeight: FontWeight.bold, 
              ),
        ),
      ),
    );
  }
}
