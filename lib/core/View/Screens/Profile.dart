import 'package:flutter/material.dart';

import '../../../global/constraints/app_color.dart';



class Profile extends StatelessWidget {
  const Profile({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD8FFC6),
      extendBodyBehindAppBar:true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [Icon(Icons.arrow_forward,size: 50,)],
        leading: Container(),
      ),
      body: Column(
        children: [
          Container(

            width: double.infinity, // Full width
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(25)),
              color: Color(AppColor.secondaryColor),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Container(
              // color: Color(AppColor.secondaryColor),
              // margin: EdgeInsets.symmetric(horizontal:),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 50),
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage('https://via.placeholder.com/150'), // Replace with your image URL
                  ),
                  SizedBox(height: 20),
                  Text(
                    'علي أنيس بن هرهرة', // Replace with student's name
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'طالب', // Replace with student's grade
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height:20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: double.infinity, // Full width
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all( Radius.circular(25)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'معلوماتك الشخصية',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text('تاريخ الميلاد:'),
                  Text('2000/12/12'),
                  Divider(thickness: 1.5,),
                  Text('مكان الميلاد'),
                  Text("القطن"),
                  Divider(thickness: 1.5,),
                  Text('رقم الهاتف'),
                  Text('77777777777')

                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: double.infinity, // Full width
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all( Radius.circular(25)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'معلوماتك الدراسية',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text("المرحلة الدراسية"), // Replace with actual academic year
                  Text("أول ثانوي"),
                  Divider(thickness: 1.5,),
                  Text("المدرسة الحالية"), // Replace with actual academic year
                  Text("مدارس الإبداع الأهلية"),// Replace with actual specialization
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}