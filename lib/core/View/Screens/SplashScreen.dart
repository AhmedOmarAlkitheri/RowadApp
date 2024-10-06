import 'package:flutter/material.dart';
import 'package:rowadapp/core/View/Widgets/Space.dart';
import 'package:rowadapp/global/constraints/app_color.dart';
import 'package:rowadapp/helpers/Getstorage_helper.dart';

class Splashscreen extends StatelessWidget {
  Splashscreen({super.key});
  Getstorage_helper getstorage_helper = Getstorage_helper.instance;
  @override
  Widget build(BuildContext context) {
    //   Future.delayed(Duration(seconds: 3), () {
    //   if (getstorage_helper.readFrmFile("token") == null) {
    //     Navigator.pushNamed(context, "/Login");
    //   } else {
    //     Navigator.pushNamed(context, "/Homescreen");
    //   }
    // });
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          const Color(AppColor.primaryColor),
          const Color(AppColor.secondaryColor),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TweenAnimationBuilder(
                tween: Tween<double>(begin: 0, end: 1),
                duration: Duration(seconds: 1),
                builder: (context, value, child) {
                  return Opacity(
                    opacity: value,
                    child: Transform.scale(
                      scale: value,
                      child: Image.asset(
                        "assets/images/logo.png",
                        width: 250,
                        height: 250,
                      ),
                    ),
                  );
                },
              ),
              // SizedBox(height: 25),
              // TweenAnimationBuilder(
              //   tween: Tween<Offset>(begin: Offset(1, 0), end: Offset(0, 0)),
              //   duration: Duration(seconds: 1),
              //   builder: (context, offset, child) {
              //     return Transform.translate(
              //       offset: offset,
              //       child: Text(
              //         "مركز رواد المستقبل",
              //         style:
              //             TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              //       ),
              //     );
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
