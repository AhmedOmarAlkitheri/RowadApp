import 'package:flutter/material.dart';

class Whiteroubdedbackground extends StatelessWidget {
  double? height;
  double? width;
  EdgeInsets? horizontalPadding;
  late Widget child;
  Whiteroubdedbackground(
      {super.key,
      required this.child,
      this.height,
      this.width,
      this.horizontalPadding});

  @override
  Widget build(BuildContext context) {
    return Container(
        //  padding: EdgeInsets.only(left: 15, right: 15),
        width: width ?? MediaQuery.of(context).size.width - 40,
        height: height ?? 610,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.white),
        child: Padding(
            padding:
                horizontalPadding ?? const EdgeInsets.symmetric(horizontal: 10),
            child: child));
  }
}
