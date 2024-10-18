import 'package:flutter/material.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

import '../../../global/theme/AppColor/appColor_LightMode.dart';

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
      cursorColor: const Color(Appcolorlightmode.lightGreen),
obscureText:  obscureText??false,
      decoration: decoration.copyWith(
        fillColor: Color(Appcolorlightmode.whiteColor),
        filled: true,
        hintText: hintText,
        labelText: labelText,
        prefixIcon: prefixIcon,
        prefixIconColor: const Color(Appcolorlightmode.lightGreen),

suffixIcon:  suffixIcon ,
        labelStyle: const TextStyle(color: Color(Appcolorlightmode.lightGreen)),
        // icon: Icon(Icons.account_circle_rounded),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(color: Color(Appcolorlightmode.lightGreen)),
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
