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

class _RegistrationscreenState extends State<Registrationscreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState(){
    super.initState();
    _controller = AnimationController(duration: const Duration(seconds: 2), vsync: this,)..forward();
  }
    void dispose(){
    _controller.dispose();
    super.dispose();
    }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //backgroundColor:
        body:
            Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(Appcolorlightmode.backgroundTopColor),
                        Color(Appcolorlightmode.backgroundBottomColor)
                      ])),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          // color: const Color(Appcolorlightmode.backgroundTopColor),
          child: Column(
            children: [
              SizedBox(
                width: 500,
                height: 500,
                child: Stack(
                  children: [
                    Positioned(
                      top: -100,
                      right: -52,
                      child: Center(
                        child: Container(
                          width: 500,
                          height: 500,
                          decoration:  BoxDecoration(
                              borderRadius: BorderRadius.circular(230),
                              color: Color(Appcolorlightmode.darkGreen).withOpacity(0.31)),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 80,
                      right: 110,
                      child: Column(
                        children: [
                          Container(
                            height: 140,
                            width: 170,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/images/rowad.png"),
                                    fit: BoxFit.fill)),
                          ),
                          const Space(
                            height: 40,
                          ),
                          Container(
                            child: FadeTransition(
                              opacity: _controller,
                              child: const Text(
                                "مرحبًا بك",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 32,
                                    color: Color(Appcolorlightmode.colorWelcome)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Space(
                height: 90,
              ),
              Containerbutton(
                  name: "تسجيل",
                  dwidth: 250,
                  allBorderRadius: 10,
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
