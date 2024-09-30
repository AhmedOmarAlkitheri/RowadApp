import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {
  TextEditingController? controller;
  int? lines;
  Textfield({super.key, this.controller, this.lines});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: lines ?? 1,
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none)),
    );
  }
}
