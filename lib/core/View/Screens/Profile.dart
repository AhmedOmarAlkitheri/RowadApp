import 'package:flutter/material.dart';
import 'package:rowadapp/core/View/Widgets/Space.dart';

import '../../../global/constraints/app_color.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffD8FFC6),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        actions: const [
          Icon(
            Icons.arrow_forward,
            size: 30,
          ),
          Space(
            width: 10,
          ),
        ],
        // leading: Container(),
      ),
      body: Column(
        children: [
          Container(
            height: 290,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius:
                  const BorderRadius.vertical(bottom: Radius.circular(25)),
              color: const Color(AppColor.secondaryColor),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 50),
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                      'https://via.placeholder.com/150'), // Replace with your image URL
                ),
                SizedBox(height: 20),
                Text(
                  'علي أنيس بن هرهرة',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  'طالب',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          SizedBox(
              height: MediaQuery.of(context).size.height - 290,
              // width: 200,
              child: SingleChildScrollView(
                // scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(25)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'معلوماتك الشخصية',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Text('تاريخ الميلاد:'),
                            Text('2000/12/12'),
                            Divider(
                              thickness: 1.5,
                            ),
                            Text('مكان الميلاد'),
                            Text("القطن"),
                            Divider(
                              thickness: 1.5,
                            ),
                            Text('رقم الهاتف'),
                            Text('77777777777')
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        width: double.infinity, // Full width
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(25)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'معلوماتك الدراسية',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Text(
                                "المرحلة الدراسية"), // Replace with actual academic year
                            Text("أول ثانوي"),
                            Divider(
                              thickness: 1.5,
                            ),
                            Text(
                                "المدرسة الحالية"), // Replace with actual academic year
                            Text(
                                "مدارس الإبداع الأهلية"), // Replace with actual specialization
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
