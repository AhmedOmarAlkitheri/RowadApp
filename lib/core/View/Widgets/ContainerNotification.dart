import 'package:flutter/material.dart';
import 'package:rowadapp/global/components/typeNotifications.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

class Containernotification extends StatelessWidget {
  const Containernotification(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.typeNotification});
  final String title, subtitle, typeNotification;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(color: Colors.grey, offset: Offset(0, 5), blurRadius: 4)
          ],
          color: Color(AppColor.secondaryTwoColor),
          borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: Icon(
          Icons.notification_add_sharp,
          color: type(typeNotification),
        ),
        title: Text(title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: type(typeNotification),
            )),
        subtitle: Text(subtitle),
      ),
    );
  }
}
