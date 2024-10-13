import 'package:flutter/material.dart';

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
          child: Icon(icon, color: Colors.black),
        ),
      ),
      const SizedBox(height: 5),
      Text(
        label,
        style: const TextStyle(
           fontFamily: 'vazir-light',

                               fontWeight: FontWeight.w400, 
          color: Colors.black),
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
