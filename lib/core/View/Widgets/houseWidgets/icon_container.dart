import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class IconContainer extends StatelessWidget {
  IconContainer({super.key, this.text});
  String? text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 76,
      child: Column(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: const Color(0xffC4FFA9),
            ),
            child: const Icon(Icons.person_outline_outlined),
          ),

          Text(
            '$text',
            softWrap: true,
            textAlign: TextAlign.center,
            style: TextStyle(
                 fontFamily: 'vazir-light',
              fontSize: 12),
          ),
        ],
      ),
    );
  }
}
