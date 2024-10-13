import 'package:flutter/material.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

import '../../../../global/theme/AppColor/appColor_LightMode.dart';

class ListOf extends StatelessWidget {
  // String? sendDate;
  String? title;
  ListOf({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Container(
          //     margin: EdgeInsets.only(left: 20),
          //     alignment: Alignment.topLeft,
          //     child: Text(
          //       '${this.sendDate}',
          //       style: TextStyle(fontWeight: FontWeight.bold),
          //     )),
          Container(
            margin: const EdgeInsets.only(right: 10, left: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(Appcolorlightmode.whiteColor),
              boxShadow: [
                BoxShadow(
                  color: Color(Appcolorlightmode.blackColor).withOpacity(0.25),
                  blurRadius: 3,
                  // spreadRadius: 2,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            width: MediaQuery.of(context).size.width - 20,
            height: 83,
            child: Center(
              child: ListTile(
                leading: Container(
                  margin: const EdgeInsets.only(right: 10),
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                      color: const Color(Appcolorlightmode.lightGreen),
                      borderRadius: BorderRadius.circular(5)),
                ),
                title: Text(
                  '$title',
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
