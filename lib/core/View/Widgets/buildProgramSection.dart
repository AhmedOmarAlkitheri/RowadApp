
  import 'package:flutter/material.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

import '../../../global/theme/AppColor/appColor_LightMode.dart';

Widget buildProgramSection(String programName, List<double?>? programValues, int index, List<String> subjects) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          programName,
          style:  TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color(Appcolorlightmode.blackColor),
          ),
        ),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Column(
            children: List.generate(subjects.length, (i) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    subjects[i], 
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color(Appcolorlightmode.blackColor),
                    ),
                  ),
                  Text(
                   '${programValues?[i + index * subjects.length]?.toStringAsFixed(2) }' ,
                     
                    style: const TextStyle(
                      fontSize: 16,
                      color: Color(Appcolorlightmode.lightGreen),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              );
            }),
          ),
        ),

   Divider(
     color: Colors.grey[400],
     thickness: 0.9,
      ),
        const SizedBox(height: 8),
      ],
    );
  }