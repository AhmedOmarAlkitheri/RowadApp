import 'package:flutter/material.dart';

class Texttitle extends StatelessWidget {
  EdgeInsets? padding;
  late String title;
  Texttitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20),
      child: Text(
        title,
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
