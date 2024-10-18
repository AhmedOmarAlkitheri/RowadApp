import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rowadapp/core/DB/data.dart';
import 'package:rowadapp/core/View/Widgets/drawerwidget.dart';
import 'package:rowadapp/core/View/Widgets/fl_chat.dart';
import 'package:rowadapp/core/ViewModel/EvaluationVM.dart';
import 'package:rowadapp/core/ViewModel/room_vm.dart';
import 'package:rowadapp/core/model/NotificationModel%20.dart';
import 'package:rowadapp/global/theme/AppColor/appColor_LightMode.dart';
import 'package:rowadapp/helpers/Getstorage_helper.dart';
import '../Widgets/Navigationbar.dart';
import '../Widgets/Space.dart';
import '../Widgets/chart.dart';

class Homescreen extends StatelessWidget {
  Homescreen({super.key});
  Getstorage_helper getstorageHelper = Getstorage_helper.instance;
  double? result;
  String? content, title;
  Notification_M? filteredNotifications;
  @override
  Widget build(BuildContext context) {
    result = getstorageHelper.readFrmFile("yearResultTotal");
    content = getstorageHelper.readFrmFile("content");
    title = getstorageHelper.readFrmFile("title");

    return Scaffold(
      // extendBodyBehindAppBar: true,
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   title: Text("مركز رواد المستقبل",style: TextStyle(color: Colors.black),),
      //   actions: [
      //     IconButton(onPressed: (){
      //       Navigator.pushNamedAndRemoveUntil(context, '/DrawerScreen', (route)=> false);
      //     }, icon: Icon(Icons.menu,size: 30,color: Colors.black,))
      //   ],
      // ),
      body: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Color(Appcolorlightmode.backgroundTopColor),
              Color(Appcolorlightmode.backgroundBottomColor)
            ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "مركز رواد المستقبل",
                  style: TextStyle(
                      color: Color(Appcolorlightmode.blackColor),
                      fontFamily: 'vazir-light',
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                ),
                IconButton(
                    onPressed: () {
                      // Navigator.pushNamedAndRemoveUntil(
                      //     context, '/DrawerScreen', (route) => false);
                      showTopSheet(context);
                    },
                    icon: const Icon(
                      Icons.menu,
                      size: 30,
                      color: Colors.black,
                    )),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Stack(children: [
              Container(
                padding: const EdgeInsets.only(
                    right: 20, left: 20, top: 20, bottom: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      blurRadius: 4,
                      offset: const Offset(0, 4),
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.notifications,
                              color: Colors.grey[300],
                            ),
                            onPressed: () {
                              //Handle notification actions here
                            },
                          ),
                          //   SizedBox(width: 70,),
                          IconButton(
                              icon: Icon(
                                Icons.close,
                                color: Colors.grey[500],
                              ),
                              onPressed: () {}),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 30),
                      child: Text('بدء الفصل الدراسي الجديد',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.start),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30, top: 5),
                      child: Text(
                        'أهلاً بكم في الفصل الدراسي الجديد! نراكم جميعًا',
                        style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  color:
                      Colors.white, // Replace with the desired background color
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      blurRadius: 4,
                      offset: const Offset(0, 4),
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.notifications,
                              color: Colors.grey[300],
                            ),
                            onPressed: () {
                              //Handle notification actions here
                            },
                          ),
                          //   SizedBox(width: 70,),
                          IconButton(
                              icon: Icon(
                                Icons.close,
                                color: Colors.grey[500],
                              ),
                              onPressed: () {}),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Text(title ?? 'إشعار',
                          style: const TextStyle(
                            fontSize: 16,
                            fontFamily: 'vazir-medium',
                          ),
                          textAlign: TextAlign.start),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30, top: 5),
                      child: Text(
                        content ?? 'لا يوجد اشعار جديد',
                        style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
            const SizedBox(
              height: 15,
            ),
            Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Expanded(
                      child:
                          Consumer<RoomVM>(builder: (context, roomVM, child) {
                        return Container(
                          padding: const EdgeInsets.all(10),
                          height: 210,
                          width: MediaQuery.of(context).size.width / 2,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.25),
                                blurRadius: 4,
                                offset: const Offset(0, 4),
                              )
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.home_filled,
                                      color: Colors.grey[300],
                                      size: 20,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    const Text(
                                      'السكن',
                                      style: TextStyle(
                                        fontFamily: 'vazir-medium',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 7,
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    // Expanded(
                                    //   child: const Text(
                                    //     'الدور : ',
                                    //     style: TextStyle(color: Colors.black),
                                    //   ),
                                    // ),
                                    Expanded(
                                      child: Text(
                                          roomVM.room?.floor ??
                                              'الطابق : غير مضاف',
                                          style: const TextStyle(
                                              fontFamily: 'vazir-light',
                                              color: Color(Appcolorlightmode
                                                  .blackColor))),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 7,
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    const Text(
                                      'الغرفة :',
                                      style: TextStyle(
                                          fontFamily: 'vazir-light',
                                          color: Color(
                                              Appcolorlightmode.blackColor)),
                                    ),
                                    Text(
                                      roomVM.room?.roomNo ?? ' غير مضاف',
                                      style: const TextStyle(
                                          fontFamily: 'vazir-light',
                                          color: Color(
                                              Appcolorlightmode.blackColor)),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 7,
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    // Expanded(
                                    //   child: const Text(
                                    //     'الجناح : ',
                                    //     style: TextStyle(color: Colors.black),
                                    //   ),
                                    // ),
                                    Expanded(
                                      child: Text(
                                          roomVM.room?.suit ??
                                              "الجناح : غير مضاف",
                                          style: const TextStyle(
                                            fontFamily: 'vazir-light',
                                            color: Color(
                                                Appcolorlightmode.blackColor),
                                          )),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      }),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      height: 210,
                      width: MediaQuery.of(context).size.width / 2.2,
                      decoration: BoxDecoration(
                        color: Colors
                            .white, // Replace with the desired background color
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(Appcolorlightmode.blackColor)
                                .withOpacity(0.25),
                            blurRadius: 4,
                            offset: const Offset(0, 4),
                          )
                        ],
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.incomplete_circle_sharp,
                                color: Colors.grey[300],
                                size: 20,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Text(
                                'الدرجة النهائية',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Center(
                            child: Consumer<Evaluationvm>(
                                builder: (context, evaluationvm, child) {
                              return PercentageCircle(
                                percentage: result ?? 0,
                                label: '',
                              );
                            }),

                            //     child: PercentageCircle(
                            //   percentage: 90,
                            //   label: '',
                            // )
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.only(
                    top: 6, bottom: 6, left: 15, right: 15),
                // padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color:
                      Colors.white, // Replace with the desired background color
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      blurRadius: 4,
                      offset: const Offset(0, 4),
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Icon(
                            Icons.holiday_village,
                            color: Colors.grey[300],
                            size: 20,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Expanded(
                            child: Text(
                              'الإجازات الرسمية',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      flex: 3,
                      child: SizedBox(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 4,
                              itemBuilder: (context, index) {
                                return Container(
                                  padding: const EdgeInsets.all(5),
                                  margin: const EdgeInsets.only(right: 20),
                                  height: 50,
                                  width: 55,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    // boxShadow: [BoxShadow(
                                    //   color: Colors.black.withOpacity(0.25),
                                    //   blurRadius: 4,
                                    //   offset: Offset(0,4),
                                    // )],
                                    color: const Color(0xffC4FFA9),
                                  ),
                                  child: Center(
                                      child: Text(
                                    holiDays[index],
                                    style: const TextStyle(
                                        fontFamily: 'vazir-light',
                                        color:
                                            Color(Appcolorlightmode.blackColor),
                                        fontSize: 14),
                                    softWrap: true,
                                    textAlign: TextAlign.center,
                                  )),
                                );
                              }),
                        ),
                      ),
                    ),

                    // const SizedBox(
                    //   height: 15,
                    // ),
                    // Expanded(
                    //   flex: 1,
                    //   child: Container(
                    //     padding: const EdgeInsets.only(
                    //         top: 15, bottom: 10, left: 15, right: 15),
                    //     // padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                    //     height: 50, width: MediaQuery.of(context).size.width,
                    //     decoration: BoxDecoration(
                    //       color: const Color(Appcolorlightmode
                    //           .whiteColor), // Replace with the desired background color
                    //       borderRadius: BorderRadius.circular(10),
                    //       boxShadow: [
                    //         BoxShadow(
                    //           color: const Color(Appcolorlightmode.blackColor)
                    //               .withOpacity(0.25),
                    //           blurRadius: 4,
                    //           offset: const Offset(0, 4),
                    //         )
                    //       ],
                    //     ),
                    //     child: Column(
                    //       crossAxisAlignment: CrossAxisAlignment.start,
                    //       children: [
                    //         Row(
                    //           children: [
                    //             Icon(
                    //               Icons.holiday_village,
                    //               color: Colors.grey[300],
                    //               size: 20,
                    //             ),
                    //             const SizedBox(
                    //               width: 7,
                    //             ),
                    //             const Text(
                    //               'الإجازات الرسمية',
                    //               style: TextStyle(
                    //                 fontFamily: 'vazir-medium',
                    //               ),
                    //             ),
                    //           ],
                    //         ),
                    //         const SizedBox(
                    //           height: 23,
                    //         ),
                    //         SizedBox(
                    //           height: 60,
                    //           width: MediaQuery.of(context).size.width,
                    //           child: Center(
                    //             child: ListView.builder(
                    //                 scrollDirection: Axis.horizontal,
                    //                 itemCount: 4,
                    //                 itemBuilder: (context, index) {
                    //                   return Container(
                    //                     padding: const EdgeInsets.all(5),
                    //                     margin: const EdgeInsets.only(right: 20),
                    //                     height: 50,
                    //                     width: 57,
                    //                     decoration: BoxDecoration(
                    //                       borderRadius: BorderRadius.circular(10),
                    //                       // boxShadow: [BoxShadow(
                    //                       //   color: Colors.black.withOpacity(0.25),
                    //                       //   blurRadius: 4,
                    //                       //   offset: Offset(0,4),
                    //                       // )],
                    //                       color: const Color(
                    //                               Appcolorlightmode.backgroundTopColor)
                    //                           .withOpacity(0.30),
                    //                     ),
                    //                     child: Center(
                    //                         child: Text(
                    //                       holiDays[index],
                    //                       style: const TextStyle(
                    //                           fontFamily: 'vazir-light',
                    //                           color:
                    //                               Color(Appcolorlightmode.blackColor),
                    //                           fontSize: 15),
                    //                       softWrap: true,
                    //                       textAlign: TextAlign.center,
                    //                     )),
                    //                   );
                    //                 }),
                    //           ),
                    //         ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Navigationbar(
              selectedTerm: 0,
            ),
          ],
        ),
      ), //)
      // ]
      // )
      // )
    );
  }
}
