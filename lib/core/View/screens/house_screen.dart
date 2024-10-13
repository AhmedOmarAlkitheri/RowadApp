

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rowadapp/core/View/Widgets/Navigationbar.dart';
import 'package:rowadapp/core/View/Widgets/Shimmer/shimmerHouse.dart';
import 'package:rowadapp/core/View/Widgets/houseWidgets/container_button.dart';
import 'package:rowadapp/core/View/Widgets/houseWidgets/icon_container.dart';
import 'package:rowadapp/core/ViewModel/room_vm.dart';

import '../../../global/theme/AppColor/appColor_LightMode.dart';

class HouseScreen extends StatelessWidget {
  const HouseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RoomVM(),
      child: SafeArea(
        child: Scaffold(
          body: Consumer<RoomVM>(builder: (context, roomVM, child) {
            if (roomVM.isLoading) {
              return const ShimmerHousing();
            }
            final room = roomVM.room;
            return Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Color(Appcolorlightmode.backgroundTopColor), Color(Appcolorlightmode.backgroundBottomColor)])),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                   Row(
                     children: [
                       SizedBox(width: 5,),
                       Text('السكن',
                        style: TextStyle(color: Color(Appcolorlightmode.blackColor), fontSize: 20)),]
                   ),
                  const SizedBox(
                    height: 20,
                  ),

                  Expanded(
                    flex: 3,
                    child: Container(
                      padding:
                          const EdgeInsets.only(top: 15, left: 10, right: 10),
                      height: 230,
                      width: 353,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Color(Appcolorlightmode.blackColor).withOpacity(0.25),
                            blurRadius: 4,
                            offset: const Offset(0, 4),
                          )
                        ],
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
                                const SizedBox(
                                  width: 20,
                                ),
                                Text('الدور ${room?.floor}'),
                                const SizedBox(
                                  width: 104,
                                ),
                                Text('الغرفة ${room?.roomNo}'),
                                const SizedBox(
                                  width: 20,
                                ),
                              ],
                            ),
                          ),
                          const Expanded(
                              flex: 1,
                              child: Row(children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'زملاء الغرفة',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ])),
                          const SizedBox(
                            height: 10,
                          ),
                          Expanded(
                              flex: 2,
                              child: Center(
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: room?.roomMates.length, //4
                                    itemBuilder: (ctx, index) => IconContainer(
                                        text: room?.roomMates[0])),
                              ))
                        ],
                      ),
                    ),
                  ),
                  //  SizedBox(height: 10,),
                  Expanded(
                    flex: 3,
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ContainerHButton(
                            onTaputton: () {
                              Navigator.pushReplacementNamed(
                                  context, '/Notificationscreen');
                            },
                            //     onTaputton: ,
                            text: 'إشعارات الدفع',

                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          ContainerHButton(
                            onTaputton: () {
                              Navigator.pushReplacementNamed(
                                  context, '/allCompliants');
                            },
                            text: 'الشكاوي',
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Expanded(
                      child: Navigationbar(
                    selectedTerm: 3,
                  )),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
