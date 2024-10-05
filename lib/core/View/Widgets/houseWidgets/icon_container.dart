import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rowadapp/core/viewmodels/room_vm.dart';

class IconContainer extends StatelessWidget {
  IconContainer({super.key, this.text});
  String? text;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 60,
        child: Column(children: [
          Container(
            width: 50,height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Color(0xffC4FFA9),
            ),
            child: Icon(Icons.person_outline_outlined),
          ),
         Text('$text',softWrap: true,textAlign: TextAlign.center,),
        ],),

    );
  }
}
