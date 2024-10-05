import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rowadapp/core/View/Widgets/houseWidgets/container_button.dart';
import 'package:rowadapp/core/View/Widgets/houseWidgets/icon_container.dart';
import 'package:rowadapp/core/models/room.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

import '../../viewmodels/room_vm.dart';
import '../Widgets/Navigationbar.dart';

class HouseScreen extends StatelessWidget {
  RoomVM rVM = RoomVM();
   HouseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xffC4FFA9),Color(0xFFFFFFFF)])
              ),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   SizedBox(height: 5,),
                   Text('السكن',style: TextStyle(color: Colors.black,fontSize: 20)),
                   SizedBox(height: 20,),
                Expanded( flex: 3,
                  child: Container(
                    padding: EdgeInsets.only(top: 15,left: 10,right: 10),
                    height: 230,
                   width: 353,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20),
                     boxShadow: [BoxShadow(
                       color: Colors.black.withOpacity(0.25),
                       blurRadius: 4,
                       offset: Offset(0,4),
                     )],
                     color: Colors.white,
                   ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Expanded(
                          flex: 1,
                         child: Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             SizedBox(width: 20,),
                            Consumer<RoomVM>(builder: (ctx,r,child){
                              return Text('الدور ${r.room.floor}');
                            },),
                           SizedBox(width: 120,),
                             Consumer<RoomVM>(builder: (ctx,r,child){
                               return Text('الغرفة ${r.room.roomNo}');
                             },),
                             SizedBox(width: 20,),
                         ],),
                       ),
                          Expanded(
                            flex: 1,
                              child: Row(children: [
                            SizedBox(width: 20,),
                            Text('زملاء الغرفة',style: TextStyle(fontWeight: FontWeight.bold),),] )),
                          SizedBox(height: 10,),
                          Expanded(
                            flex: 2,
                              child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Consumer<RoomVM>(builder: (ctx,r,child) {
                                  return IconContainer(
                                      text: r.room.roomMates[0]);
                                }),
                                Consumer<RoomVM>(builder: (ctx,r,child) {
                                  return IconContainer(
                                      text: r.room.roomMates[1]);
                                }),
                                Consumer<RoomVM>(builder: (ctx,r,child) {
                                  return IconContainer(
                                      text: r.room.roomMates[2]);
                                }),
                                Consumer<RoomVM>(builder: (ctx,r,child) {
                                  return IconContainer(
                                      text: r.room.roomMates[3]);
                                }),
                              // Container(
                              //   width: 60,
                              //   child: Column(children: [
                              //     Container(
                              //       width: 50,height: 50,
                              //       decoration: BoxDecoration(
                              //         borderRadius: BorderRadius.circular(25),
                              //         color: Color(0xffC4FFA9),
                              //       ),
                              //       child: Icon(Icons.person_outline_outlined),
                              //     ),
                              //     Text('${rVM.r.roomMates[0]}',softWrap: true,textAlign: TextAlign.center,)
                              //   ],),
                              // ),
                              // Container(
                              //   width: 60,
                              //   child: Column(children: [
                              //     Container(
                              //       width: 50,height: 50,
                              //       decoration: BoxDecoration(
                              //         borderRadius: BorderRadius.circular(25),
                              //         color: Color(0xffC4FFA9),
                              //       ),
                              //       child: Icon(Icons.person_outline_outlined),
                              //     ),
                              //     Text('${rVM.r.roomMates[1]}',softWrap: true,textAlign: TextAlign.center,)
                              //   ],),
                              // ),
                              // Container(
                              //   width: 60,
                              //   child: Column(children: [
                              //     Container(
                              //       width: 50,height: 50,
                              //       decoration: BoxDecoration(
                              //         borderRadius: BorderRadius.circular(25),
                              //         color: Color(0xffC4FFA9),
                              //       ),
                              //       child: Icon(Icons.person_outline_outlined),
                              //     ),
                              //     Text('${rVM.r.roomMates[2]}',softWrap: true,textAlign: TextAlign.center,)
                              //   ],),
                              // ),
                              // Container(
                              //   width: 60,
                              //   child: Column(children: [
                              //     Container(
                              //       width: 50,height: 50,
                              //       decoration: BoxDecoration(
                              //         borderRadius: BorderRadius.circular(25),
                              //         color: Color(0xffC4FFA9),
                              //       ),
                              //       child: Icon(Icons.person_outline_outlined),
                              //     ),
                              //     Text('${rVM.r.roomMates[3]}',softWrap: true,textAlign: TextAlign.center,)
                              //   ],),
                              // )
                            ],),
                          ))
                      ],),
                  ),
                ),
                 //  SizedBox(height: 10,),
                   Expanded(flex: 3,
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         ContainerButton(
                      //     onTaputton: ,
                           text: 'أقساط الدفع',),
                         SizedBox(height: 25,),
                         ContainerButton(
                        //   onTaputton: ,
                           text: 'الشكاوي',),
                       ],
                     ),),
                   Expanded(child: Navigationbar()),
                 ],
               ),
              ),
            ),

      )

    ;
  }
}