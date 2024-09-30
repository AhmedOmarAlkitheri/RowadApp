import 'package:flutter/material.dart';

class Roundetextbox extends StatelessWidget {
  EdgeInsets? margin;
  double? height;
  late Widget child;
  Roundetextbox({super.key, required this.child, this.height, this.margin});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height ?? 65,
        margin: margin ?? EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              blurRadius: 3,
              // spreadRadius: 2,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: child);
  }
}
