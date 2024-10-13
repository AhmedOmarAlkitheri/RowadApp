import 'package:flutter/material.dart';

import '../../../global/theme/AppColor/appColor_LightMode.dart';

//, {bool hasDot = false}
Widget buildIconButton(String label,
    {required IconData icon,
    required Function()? onTap,
    required Color? color}) {
  return Column(
    children: [
      GestureDetector(
        onTap: onTap,
        child: CircleAvatar(
          radius: 25,
          backgroundColor: color,
          child: Icon(icon, color: Color(Appcolorlightmode.blackColor)),
        ),
      ),
      const SizedBox(height: 5),
      Text(
        label,
        style: const TextStyle(color: Color(Appcolorlightmode.blackColor)),
      ),
    ],
  );
}






  // Stack(
        //   children: [



  //  if (hasDot)
  //             Positioned(
  //               top: 5,
  //               right: 5,
  //               child: Container(
  //                 width: 8,
  //                 height: 8,
  //                 decoration: BoxDecoration(
  //                   color: Colors.red,
  //                   shape: BoxShape.circle,
  //                 ),
  //               ),
  //             ),
     //   ],
        // ),
