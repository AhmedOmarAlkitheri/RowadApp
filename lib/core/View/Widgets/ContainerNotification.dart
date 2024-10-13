import 'package:flutter/material.dart';
import 'package:rowadapp/global/components/typeNotifications.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

class Containernotification extends StatelessWidget {
  const Containernotification(
      {super.key,
      required this.title,
      required this.subtitle,
       this.date});
  final String title, subtitle ;
  final String? date;
//  required this.typeNotification,
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(color: Colors.grey, offset: Offset(0, 5), blurRadius: 4)
          ],
          color: const Color(AppColor.secondaryTwoColor),
          borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: const Icon(
          Icons.notification_add_sharp,
          color: Color(AppColor.primaryColor),
          // color: type(typeNotification),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,
                style: const TextStyle(
                   fontFamily: 'vazir-medium',
                  // fontWeight: FontWeight.bold,
                  color: Color(AppColor.primaryColor),
                  //  color: type(typeNotification),
                )),
            // Text(date,
            //     style:
            //         const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
          ],
        ),
        subtitle: Text(subtitle,
        style: TextStyle( fontFamily: 'vazir-light'),
        ),
        // trailing: Text(date,
        //     style: const TextStyle(
        //       fontWeight: FontWeight.bold,
        //     )),
      ),
    );
  }
}
