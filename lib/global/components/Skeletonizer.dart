import 'package:flutter/material.dart';


class Skeletonizer extends StatelessWidget {
  final bool enabled;
  final Widget child;

  const Skeletonizer({Key? key, required this.enabled, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (enabled) {
      return  Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: child,
        
      );
    } else {
      return child;
    }
  }
}
