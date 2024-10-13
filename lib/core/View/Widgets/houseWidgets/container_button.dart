import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../global/theme/AppColor/appColor_LightMode.dart';

class ContainerHButton extends StatelessWidget {
   ContainerHButton({super.key, this.text, this.onTaputton});
  String? text;
  GestureTapCallback? onTaputton;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTaputton,
      child: Container(
        padding: const EdgeInsets.only(right: 30,top: 22),
        width:310 ,height:82 ,
        decoration: BoxDecoration(
          color: const Color(Appcolorlightmode.lightGreen),
          borderRadius: BorderRadius.circular(25),
          boxShadow: [BoxShadow(
            color: Color(Appcolorlightmode.blackColor).withOpacity(0.25),
            blurRadius: 4,
            offset: const Offset(0,4),
          )],
        ),
        child: Text('$text',style:const TextStyle(color: Color(Appcolorlightmode.whiteColor),fontSize: 20,
        fontWeight: FontWeight.bold,fontFamily:'Janna'),),
      ),
    );
  }
}
