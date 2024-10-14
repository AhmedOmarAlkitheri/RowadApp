import 'package:flutter/material.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

class Roundedbutton extends StatelessWidget {
  final GestureTapCallback? event;
  final double? height;
  final double? width;
  final double? fontSize;
  final String text;
  final bool? isLoading ;

  Roundedbutton({
    Key? key,
    this.event,
    this.fontSize,
    this.height,
    this.width,
     this.isLoading,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: isLoading??false ? null : event, 
      child: Container(
        height: height ?? 33,
        width: width ?? 110,
        decoration: BoxDecoration(
          color: const Color(AppColor.primaryColor),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              blurRadius: 3,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Center(
          child: isLoading??false
              ? const SizedBox(
                  height: 15,
                  width: 15,
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                )
              : Text(
                  text,
                  style: TextStyle(
                    fontSize: fontSize ?? 18,
                    color: Colors.white,
                  ),
                ),
        ),
      ),
    );
  }
}
