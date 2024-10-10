import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  String title;
  String imagePath;
  GestureTapCallback? event;
  Header(
      {super.key,
      required this.title,
      required this.imagePath,
      required this.event});

  @override
  Widget build(BuildContext context) {
    return Container(
        // margin: EdgeInsets.only(right: 10, left: 10),
        child: ListTile(
      leading: Image.asset(
        imagePath,
        width: 30,
        height: 32,
      ),
      title: Text(
        title,
        style: const TextStyle(fontSize: 20),
      ),
      trailing: InkWell(
        onTap: event,
        child: const Icon(
          Icons.arrow_forward_ios_sharp,
          size: 25,
        ),
      ),
    ));
  }
}
