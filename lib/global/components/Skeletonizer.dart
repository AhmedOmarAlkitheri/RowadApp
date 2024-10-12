import 'package:flutter/material.dart';


class Skeletonizer extends StatelessWidget {
  final bool enabled;
  final Widget child;

  const Skeletonizer({super.key, required this.enabled, required this.child});

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
