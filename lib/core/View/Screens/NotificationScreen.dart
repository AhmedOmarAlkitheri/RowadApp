import 'package:flutter/material.dart';
import 'package:rowadapp/core/DB/data.dart';
import 'package:rowadapp/core/View/Widgets/ContainerNotification.dart';
import 'package:rowadapp/core/View/Widgets/Navigationbar.dart';
import 'package:rowadapp/core/View/Widgets/Space.dart';
import 'package:rowadapp/core/View/Widgets/typeNotification.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

class Notificationscreen extends StatefulWidget {
  const Notificationscreen({super.key});

  @override
  State<Notificationscreen> createState() => _NotificationscreenState();
}

class _NotificationscreenState extends State<Notificationscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(AppColor.thirdColor),
        title: Row(
          children: [
            Icon(
              Icons.notifications_active,
              color: Color(AppColor.secondaryTwoColor),
            ),
            Text(
              "  الاشعارات",
              style: TextStyle(color: Color(AppColor.secondaryTwoColor)),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          // Row الخاص بـ Typenotification
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.grey, offset: Offset(0, 5), blurRadius: 4),
              ],
              color: Color(AppColor.secondaryTwoColor),
            ),
            height: 60,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              // إضافة SingleChildScrollView
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Space(width: 10),
                  Icon(Icons.notification_add_sharp),
                  Text(" نوع الاشعار"),
                  SizedBox(width: 10),
                  Typenotification(
                    type: "تغذية",
                    color: AppColor.primaryColor,
                    radius: 10,
                  ),
                  Typenotification(
                    type: "سكن",
                    color: AppColor.twoNotification,
                    radius: 10,
                  ),
                  Typenotification(
                    type: "برامج",
                    color: AppColor.thereNotification,
                    radius: 10,
                  ),
                  Typenotification(
                    type: "اخرى",
                    color: AppColor.fourNotification,
                    radius: 10,
                  ),
                ],
              ),
            ),
          ),
          // قائمة الإشعارات
          Expanded(
            child: Stack(children: [
              ListView.builder(
                itemCount: datanotification.length,
                itemBuilder: (ctx, index) {
                  return Containernotification(
                    title: datanotification[index]["title"]!,
                    subtitle: datanotification[index]["subtitle"]!,
                    typeNotification: datanotification[index]["type"]!,
                  );
                },
              ),
              Positioned(
                bottom: 20,
                right: 10,
                child: Navigationbar(selectedTerm: 1),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
