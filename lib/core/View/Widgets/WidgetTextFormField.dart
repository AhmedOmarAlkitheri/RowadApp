import 'package:flutter/material.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

class Widgettextformflied extends StatelessWidget {
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final String? hintText, labelText;
  final Widget? prefixIcon;
  final TextInputType keyboardType;
  final int? maxLength;
  final TextInputAction textInputAction;
  final ValueChanged<String>? onChanged;
  final Color cursorColor;
  final InputDecoration decoration;

  const Widgettextformflied({
    Key? key,
    this.controller,
    this.validator,
    this.hintText,
    this.keyboardType = TextInputType.text,
    this.maxLength,
    this.textInputAction = TextInputAction.done,
    this.onChanged,
    this.cursorColor = Colors.blue,
    this.decoration = const InputDecoration(),
    this.labelText,
    this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      maxLength: maxLength,
      controller: controller,
      validator: validator,
      textInputAction: textInputAction,
      onChanged: onChanged,
      cursorColor: cursorColor,

      decoration: decoration.copyWith(
        fillColor: Colors.grey[300],
        filled: true,

        hintText: hintText,
        labelText: labelText,
        prefixIcon: prefixIcon,
        prefixIconColor: Color(AppColor.primaryColor),

        labelStyle: TextStyle(color: Color(AppColor.primaryColor)),
        // icon: Icon(Icons.account_circle_rounded),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: Color(AppColor.primaryColor)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),

      // ),
    );
  }
}
