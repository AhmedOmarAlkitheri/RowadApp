import 'package:flutter/material.dart';
import 'package:rowadapp/core/View/Widgets/ContainerRegistration.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

class Upperregistrationcontainer extends StatefulWidget {
  const Upperregistrationcontainer(
      {super.key, required this.isActive, required this.location});
  final bool isActive;
  final int location;
  @override
  State<Upperregistrationcontainer> createState() => _RegistrationinfoState();
}

class _RegistrationinfoState extends State<Upperregistrationcontainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            //   color: Colors.black,
            gradient: LinearGradient(
              colors: [Color(AppColor.secondaryColor), Colors.white],
              begin: AlignmentDirectional.topStart,
              end: AlignmentDirectional.bottomStart,
            ),
          ),
          child: Stack(clipBehavior: Clip.none, children: [
            Positioned(
              right: -50,
              top: 17.5,
              child: Container(
                width: 172,
                height: 185,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(AppColor.secondarythereColor)),
              ),
            ),
            Positioned(
                // right: -55,
                top: 55,
                right: 5,
                child: Container(
                  width: 110,
                  height: 100,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/logo.png"),
                          fit: BoxFit.fill)),
                )),
            const Positioned(
              left: 40,
              top: 80,
              child: SizedBox(
                height: 50,
                child: Text(
                  "تسجيل",
                  style: TextStyle(
                      color: Color(AppColor.colorBlack),
                     fontFamily: 'vazir-light',

                               fontWeight: FontWeight.w500, 
                      fontSize: 28),
                ),
              ),
            ),
            Positioned(
              top: 170,
              child: Container(
                padding: const EdgeInsets.only(left: 20, right: 15),
                width: MediaQuery.of(context).size.width,
                height: 290 - 180,
                decoration: const BoxDecoration(
                    color: Color(AppColor.secondaryTwoColor),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Containerregistration(
                      isActive: widget.isActive,
                      location: widget.location,
                    ),
                  ],
                ),
              ),
            )
          ])),
    );
  }
}
