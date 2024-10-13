import 'package:flutter/material.dart';
import 'package:rowadapp/core/View/Widgets/drawerwidget.dart';
import '../../../global/theme/AppColor/appColor_LightMode.dart';
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
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(Appcolorlightmode.backgroundTopColor), Color(Appcolorlightmode.backgroundBottomColor)])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "مركز رواد المستقبل",
                    style: TextStyle(color: Color(Appcolorlightmode.blackColor), fontSize: 20),
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
                        color: Color(Appcolorlightmode.blackColor),
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
                        color: Color(Appcolorlightmode.blackColor).withOpacity(0.25),
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
                              fontWeight: FontWeight.bold,
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
                        color: Color(Appcolorlightmode.blackColor).withOpacity(0.25),
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
                              fontWeight: FontWeight.bold,
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
              ]),
              SizedBox(
                height: 15,
              ),
              Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(15),
                        height: 250,
                        width: MediaQuery.of(context).size.width / 3,
                        decoration: BoxDecoration(
                          color: Color(Appcolorlightmode.whiteColor),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Color(Appcolorlightmode.blackColor).withOpacity(0.25),
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
                                  width: 7,
                                ),
                                Text(
                                  'السكن',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
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
                                  'الطابق ',
                                  style: TextStyle(color: Color(Appcolorlightmode.blackColor)),
                                ),
                                Text(
                                  'الأول ',
                                  style: TextStyle(color: Color(Appcolorlightmode.blackColor)),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ), Row(
                              children: [
                                Text(
                                  'الجناح ',
                                  style: TextStyle(color: Color(Appcolorlightmode.blackColor)),
                                ),
                                Text(
                                  'الثاني',
                                  style: TextStyle(color: Color(Appcolorlightmode.blackColor)),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Text(
                                  'الغرفة ',
                                  style: TextStyle(color: Color(Appcolorlightmode.blackColor)),
                                ),
                                Text(
                                  '101 ',
                                  style: TextStyle(color: Color(Appcolorlightmode.blackColor)),
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
                        padding: EdgeInsets.all(15),
                        height: 250,
                        width: MediaQuery.of(context).size.width / 2,
                        decoration: BoxDecoration(
                          color: Color(Appcolorlightmode.whiteColor), // Replace with the desired background color
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Color(Appcolorlightmode.blackColor).withOpacity(0.25),
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
                                  width: 7,
                                ),
                                Text(
                                  'الدرجة النهائية',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 60,
                            ),
                            Center(
                                child: PercentageCircle(
                              percentage: 60,
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
                      EdgeInsets.only(top: 15, bottom: 10, left: 15, right: 15),
                  // padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                  height: 50, width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color:Color(Appcolorlightmode.whiteColor), // Replace with the desired background color
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Color(Appcolorlightmode.blackColor).withOpacity(0.25),
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
                            width: 7,
                          ),
                          Text(
                            'الإجازات الرسمية',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 23,
                      ),
                      SizedBox(
                        height: 60,
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 4,
                              itemBuilder: (context, index) {
                                return Container(
                                  padding: EdgeInsets.all(5),
                                  margin: EdgeInsets.only(right: 20),
                                  height: 50, width: 57,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    // boxShadow: [BoxShadow(
                                    //   color: Colors.black.withOpacity(0.25),
                                    //   blurRadius: 4,
                                    //   offset: Offset(0,4),
                                    // )],
                                  color: Color(Appcolorlightmode.backgroundTopColor).withOpacity(0.30),
                                  ),
                                  child: Center(
                                      child: Text(
                                    holiDays[index],
                                    style: TextStyle(
                                        color: Color(Appcolorlightmode.blackColor), fontSize: 15),
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
      ),
    );
  }
}
