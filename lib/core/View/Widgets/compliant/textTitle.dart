import 'package:flutter/material.dart';

class Texttitle extends StatelessWidget {
  EdgeInsets? padding;
  late String title;
  Texttitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Text(
        title,
        style: const TextStyle(
   fontFamily: 'almarai',
                            fontWeight: FontWeight.w500,          fontSize: 17),
      ),
    );
  }
}
