import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  String title;
  String imagePath;

  Header({super.key, required this.title, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
        // margin: EdgeInsets.only(right: 10, left: 10),
        child: ListTile(
      leading: Image.asset(
        this.imagePath,
        width: 36,
        height: 38,
      ),
      title: Text(
        this.title,
        style: TextStyle(fontSize: 24),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios_sharp,
        size: 30,
      ),
    ));
  }
}
