import 'package:flutter/material.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

class Widgettextformflied extends StatelessWidget {
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final String? hintText, labelText;
  final Widget? prefixIcon , suffixIcon;
  final TextInputType keyboardType;
  final int? maxLength, maxLines;
  final TextInputAction textInputAction;
  final ValueChanged<String>? onChanged;
  final AutovalidateMode? autovalidateMode;
 final bool?  obscureText;
  final InputDecoration decoration;

  const Widgettextformflied({
    super.key,
    this.controller,
    this.suffixIcon,
    this.obscureText,
    this.validator,
    this.hintText,
    this.keyboardType = TextInputType.text,
    this.maxLength,
    this.maxLines,
    this.textInputAction = TextInputAction.done,
    this.onChanged,
    this.decoration = const InputDecoration(),
    this.labelText,
    this.prefixIcon,
    this.autovalidateMode,
   
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
   
      autovalidateMode: autovalidateMode,
      maxLines: maxLines,
      keyboardType: keyboardType,
      maxLength: maxLength,
      controller: controller,
      validator: validator,
      textInputAction: textInputAction,
      onChanged: onChanged,
      cursorColor: const Color(AppColor.primaryColor),
obscureText:  obscureText??false,
      decoration: decoration.copyWith(
        fillColor: Colors.grey[300],
        filled: true,

        hintText: hintText,
        labelText: labelText,
        prefixIcon: prefixIcon,
        prefixIconColor: const Color(AppColor.primaryColor),
suffixIcon:  suffixIcon ,
        labelStyle: const TextStyle(color: Color(AppColor.primaryColor)),
        // icon: Icon(Icons.account_circle_rounded),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(color: Color(AppColor.primaryColor)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(color: Colors.grey),
          
        ),
      ),

      // ),
    );
  }
}
