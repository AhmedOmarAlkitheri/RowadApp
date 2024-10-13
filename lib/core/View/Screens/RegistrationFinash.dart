import 'package:flutter/material.dart';
import 'package:rowadapp/core/View/Widgets/ContainerButton.dart';
import 'package:rowadapp/core/View/Widgets/Space.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

import '../../../global/theme/AppColor/appColor_LightMode.dart';

class RegistrationFinash extends StatelessWidget {
  const RegistrationFinash({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        decoration: const BoxDecoration(
          //   color: Colors.black,
          gradient: LinearGradient(
            colors: [Color(Appcolorlightmode.backgroundTopColor), Color(Appcolorlightmode.backgroundBottomColor)],
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomStart,
          ),
        ),
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(15),
            margin: const EdgeInsets.all(20),
            height: 400,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Color(Appcolorlightmode.whiteColor),
              boxShadow: [
                BoxShadow(
                    color: Color(Appcolorlightmode.blackColor),
                    offset: Offset(0, 5),
                    blurRadius: 4),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(Appcolorlightmode.lightGreen)),
                  child: const Icon(
                    Icons.check_rounded,
                    color: Color(Appcolorlightmode.whiteColor),
                    size: 80,
                  ),
                ),
                //   Image.asset("assets/images/download.jpeg"),
                const Space(
                  height: 20,
                ),
                const Text(
                  "نشكرك على التسجيل في مركز رواد المستقبل",
                  style: TextStyle(fontSize: 15,
fontFamily: 'almarai',
                            fontWeight: FontWeight.w500,                     ),
                ),
                const Space(
                  height: 15,
                ),
                const Text(
                  "سوف يتم التواصل معكم قريبا...",
                  style: TextStyle(fontSize: 15, 
fontFamily: 'almarai',
                            fontWeight: FontWeight.w500,                    ),
                ),
                const Space(
                  height: 20,
                ),
                Containerbutton(
                    allBorderRadius: 15,
                    name: "الصفحة الرئيسية",
                    onPressed: () {
                      Navigator.pushNamed(context, "/Login");
                    }),
              ],
            ),
          ),
        ),
      )),
    );
  }
}