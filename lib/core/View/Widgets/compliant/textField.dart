import 'package:flutter/material.dart';
import 'package:rowadapp/helper/Validation.dart';

class Textfield extends StatelessWidget {
  TextEditingController? controller;
  int? lines;
  // FormFieldValidator<String>? validator;
  Textfield({super.key, this.controller, this.lines});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: Validation.validateNotEmpty,
      controller: controller,
      maxLines: lines ?? 1,
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none
              )),
    );
  }
}
