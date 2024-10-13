import 'package:flutter/material.dart';
import 'package:rowadapp/core/View/Widgets/drawerwidget.dart';
import '../Widgets/Navigationbar.dart';
import '../Widgets/Space.dart';
import '../Widgets/chart.dart';

class Homescreen extends StatelessWidget {
  var holiDays = [
    '22      مايو',
    '26    سبتمبر',
    '14    أكتوبر',
    '30    نوفمبر'
  ];
  Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
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
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xffC4FFA9), Color(0xFFFFFFFF)])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "مركز رواد المستقبل",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'vazir-light',
                      fontWeight: FontWeight.w500),
                ),
                IconButton(
                    onPressed: () {
                      // Navigator.pushNamedAndRemoveUntil(
                      //     context, '/DrawerScreen', (route) => false);
                      showTopSheet(context);
                    },
                    icon: Icon(
                      Icons.menu,
                      size: 30,
                      color: Colors.black,
                    )),
              ],
            ),
            SizedBox(
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
                      offset: Offset(0, 4),
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2),
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
                      padding: EdgeInsets.only(right: 30),
                      child: Text('بدء الفصل الدراسي الجديد',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'vazir-medium',
                            // fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.start),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 30, top: 5),
                      child: Text(
                        'أهلاً بكم في الفصل الدراسي الجديد! نراكم جميعًا',
                        style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  color:
                      Colors.white, // Replace with the desired background color
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      blurRadius: 4,
                      offset: Offset(0, 4),
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
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
                      padding: EdgeInsets.only(right: 30),
                      child: Text('بدء الفصل الدراسي الجديد',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'vazir-medium',
                            // fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.start),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 30, top: 5),
                      child: Text(
                        'أهلاً بكم في الفصل الدراسي الجديد! نراكم جميعًا',
                        style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'vazir-light',
                            color: Colors.grey[700]),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
            SizedBox(
              height: 15,
            ),
            Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 250,
                      width: MediaQuery.of(context).size.width / 3,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            blurRadius: 4,
                            offset: Offset(0, 4),
                          )
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.home_filled,
                                color: Colors.grey[300],
                                size: 20,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'السكن',
                                style: TextStyle(
                                  fontFamily: 'vazir-medium',

                                  // fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            children: [
                              Text(
                                'الدور :',
                                style: TextStyle(
                                                              fontFamily: 'vazir-light',
                                  color: Colors.black),
                              ),
                              Text(
                                '1',
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Text(
                                'الغرفة :',
                                style: TextStyle(
                                                              fontFamily: 'vazir-light',

                                  color: Colors.black),
                              ),
                              Text(
                                '3',
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 250,
                      width: MediaQuery.of(context).size.width / 2,
                      decoration: BoxDecoration(
                        color: Colors
                            .white, // Replace with the desired background color
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            blurRadius: 4,
                            offset: Offset(0, 4),
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
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'الدرجة النهائية',
                                style: TextStyle(
                                                              fontFamily: 'vazir-medium',

                                  // fontWeight: FontWeight.bold
                                  ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Center(
                              child: PercentageCircle(
                            percentage: 50,
                            label: '',
                          )),
                        ],
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: 15,
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding:
                    EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 15),
                // padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                height: 50, width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      blurRadius: 4,
                      offset: Offset(0, 4),
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.holiday_village,
                          color: Colors.grey[300],
                          size: 20,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'الإجازات الرسمية',
                          style: TextStyle(
                                                        fontFamily: 'vazir-medium',

                            // fontWeight: FontWeight.bold
                            ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 45,
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return Container(
                                padding: EdgeInsets.all(5),
                                margin: EdgeInsets.only(right: 20),
                                height: 50,
                                width: 55,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  // boxShadow: [BoxShadow(
                                  //   color: Colors.black.withOpacity(0.25),
                                  //   blurRadius: 4,
                                  //   offset: Offset(0,4),
                                  // )],
                                  color: Color(0xffC4FFA9),
                                ),
                                child: Center(
                                    child: Text(
                                  holiDays[index],
                                  style: TextStyle(
                                                                fontFamily: 'vazir-light',

                                      color: Colors.black, fontSize: 13),
                                  softWrap: true,
                                  textAlign: TextAlign.center,
                                )),
                              );
                            }),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            const Navigationbar(
              selectedTerm: 0,
            ),
          ],
        ),
      ),
    );
  }
}
