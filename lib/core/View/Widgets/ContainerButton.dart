import 'package:flutter/material.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

import '../../../global/theme/AppColor/appColor_LightMode.dart';

class Containerbutton extends StatelessWidget {
  Containerbutton(
      {super.key,
      this.dwidth,
      this.dheight,
      required this.allBorderRadius,
      required this.name,
      required this.onPressed});
  final double allBorderRadius;
  final String name;
  final Function()? onPressed;
  double? dheight, dwidth;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: dwidth ?? 87,
      height: dheight ?? 50,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(Appcolorlightmode.blackColor).withOpacity(0.25),
            blurRadius: 4,
            offset: Offset(0, 4),
          )
        ],
        borderRadius: BorderRadius.circular(allBorderRadius),
        gradient: const LinearGradient(
          colors: [
            Color(Appcolorlightmode.buttonFirstColor),
            Color(Appcolorlightmode.buttonSecondColor)
          ],
          begin: AlignmentDirectional.topStart,
          end: AlignmentDirectional.bottomCenter,
        ),
      ),
      child: MaterialButton(
        //  color: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(allBorderRadius),
        ),
        onPressed: onPressed,
        child: Text(
          name,
          style: const TextStyle(
              fontFamily: 'vazir-medium',
              color: Color(Appcolorlightmode.whiteColor),
              fontWeight: FontWeight.bold,
              fontSize: 18),
        ),
      ),
    );
  }
}
