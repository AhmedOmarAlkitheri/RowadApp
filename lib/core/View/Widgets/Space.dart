import 'package:flutter/material.dart';

class Space extends StatelessWidget {
  const Space({super.key, this.height, this.width, this.child});
  final double? width, height;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: child,
    );
  }
}
