import 'package:flutter/material.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

class ListOf extends StatelessWidget {
  String? sendDate;
  String? title;
  ListOf({super.key, this.sendDate, this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              margin: EdgeInsets.only(left: 20),
              alignment: Alignment.topLeft,
              child: Text(
                '${this.sendDate}',
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          Container(
            margin: EdgeInsets.only(right: 10, left: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  blurRadius: 3,
                  // spreadRadius: 2,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            width: MediaQuery.of(context).size.width - 20,
            height: 83,
            child: Center(
              child: ListTile(
                leading: Container(
                  margin: EdgeInsets.only(right: 10),
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                      color: Color(AppColor.primaryColor),
                      borderRadius: BorderRadius.circular(5)),
                ),
                title: Text(
                  '${this.title}',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
