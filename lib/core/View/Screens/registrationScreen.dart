import 'package:flutter/material.dart';
import 'package:rowadapp/core/View/Widgets/ContainerButton.dart';
import 'package:rowadapp/core/View/Widgets/Space.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

import '../../../global/theme/AppColor/appColor_LightMode.dart';

class Registrationscreen extends StatefulWidget {
  const Registrationscreen({super.key});

  @override
  State<Registrationscreen> createState() => _RegistrationscreenState();
}

class _RegistrationscreenState extends State<Registrationscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //backgroundColor:
        body:
            // width: MediaQuery.of(context).size.width,
            // height: MediaQuery.of(context).size.height,

            Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: const Color(Appcolorlightmode.backgroundTopColor),
          child: Column(
            children: [
              SizedBox(
                width: 500,
                height: 500,
                child: Stack(
                  children: [
                    Positioned(
                      top: -100,
                      right: -45,
                      child: Center(
                        child: Container(
                          width: 450,
                          height: 450,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(Appcolorlightmode.buttonFirstColor)),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 80,
                      right: 100,
                      child: Column(
                        children: [
                          Container(
                            height: 140,
                            width: 170,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/images/logo.png"),
                                    fit: BoxFit.fill)),
                          ),
                          const Space(
                            height: 20,
                          ),
                          Container(
                            child: const Text(
                              "مرحبًا بك",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 32,
                                  color: Color(Appcolorlightmode.colorWelcome)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Containerbutton(
                  name: "تسجيل",
                  dwidth: 160,
                  allBorderRadius: 15,
                  
                                  dheight: 40,
                  onPressed: () {
                    Navigator.pushNamed(context, "/Registrationinfo");
                  })
            ],
          ),
        ),
        //  secondarythereColor
      ),
    );
  }
}
