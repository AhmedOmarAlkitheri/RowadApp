import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerButton extends StatelessWidget {
   ContainerButton({super.key, this.text, this.onTaputton});
  String? text;
  GestureTapCallback? onTaputton;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTaputton,
      child: Container(
        padding: const EdgeInsets.only(right: 30,top: 11),
        width:280 ,height:60 ,
        decoration: BoxDecoration(
          color: const Color(0xff6BBF44),
          borderRadius: BorderRadius.circular(25),
          boxShadow: [BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 4,
            offset: const Offset(0,4),
          )],
        ),
        child: Text('$text',style:const TextStyle(color: Colors.white,fontSize: 20,
           fontFamily: 'vazir-medium',
        // fontWeight: FontWeight.bold,
        // fontFamily:'Janna'
        ),),
      ),
    );
  }
}
