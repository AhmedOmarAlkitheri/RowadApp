import 'package:flutter/material.dart';
import 'package:rowadapp/core/View/Widgets/Space.dart';

class Typenotification extends StatelessWidget {
  const Typenotification(
      {super.key, required this.type, this.radius, required this.color});
  final int color;
  final double? radius;
  final String type;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          minRadius: radius,
          backgroundColor: Color(color),
        ),
        Space(
          width: 10,
        ),
        Text(
          type,
          style: TextStyle(color: Color(color)),
        ),
        Space(
          width: 5,
        ),
      ],
    );
  }
}
