import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';

import '../../../global/theme/AppColor/appColor_LightMode.dart';

class Slidersscreen extends StatelessWidget {
  const Slidersscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: OnBoardingSlider(
            headerBackgroundColor: Color(Appcolorlightmode.darkGreen).withOpacity(0.31),
            finishButtonText: 'التالي',
            pageBackgroundColor: Color(Appcolorlightmode.darkGreen).withOpacity(0.31),
            finishButtonStyle: FinishButtonStyle(
              // hoverColor: Color(Appcolorlightmode.darkGreen),
              backgroundColor: Color(Appcolorlightmode.darkGreen)
            ),
            onFinish: (){
              Navigator.pushReplacementNamed(context, "/Login");
            },
            //  skipTextButton: Text('Skip'),
            //  trailing: Text('Login'),
            background: [
            Container(color:Color(Appcolorlightmode.buttonSecondColor) ,),
              Container(color:Color(Appcolorlightmode.buttonSecondColor) ,),
              Container(color:Color(Appcolorlightmode.buttonSecondColor) ,),
            ],
            totalPage: 3,
            speed: 1.8,
            pageBodies: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 70),
                child: Container(
                    height: 230,
                    decoration: BoxDecoration(
                        color: Color(Appcolorlightmode.whiteColor),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Color(Appcolorlightmode.blackColor).withOpacity(0.25),
                            blurRadius: 4,
                            offset: Offset(0, 4),
                          )
                        ]),
                    child: Center(child: Column(children: [
                      Text('أهلًا بك عزيزي الطالب \n'
                          'لتكون جزءًا من مركز رواد المستقبل',style: TextStyle(fontSize: 18,),textAlign: TextAlign.center,)
                    ],))),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 70),
                child: Container(
                    height: 230,
                    decoration: BoxDecoration(
                        color: Color(Appcolorlightmode.whiteColor),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Color(Appcolorlightmode.blackColor).withOpacity(0.25),
                            blurRadius: 4,
                            offset: Offset(0, 4),
                          )
                        ]),
                    child: Center(child: Column(children: [
                      Text('أهلًا بك عزيزي الطالب \n'
                          'لتكون جزءًا من مركز رواد المستقبل',style: TextStyle(fontSize: 18,),textAlign: TextAlign.center,)
                    ],))),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 70),
                child: Container(
                    height: 230,
                    decoration: BoxDecoration(
                        color: Colors
                            .white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Color(Appcolorlightmode.whiteColor).withOpacity(0.25),
                            blurRadius: 4,
                            offset: Offset(0, 4),
                          )
                        ]),
                    child: Center(child: Column(children: [
                      Text('أهلًا بك عزيزي الطالب \n'
                          'لتكون جزءًا من مركز رواد المستقبل',style: TextStyle(fontSize: 18,),textAlign: TextAlign.center,)
                    ],))),
              ),
            ],
        ),
      ),
    );
  }
}
