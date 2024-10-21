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
            headerBackgroundColor: Color(Appcolorlightmode.lightGreen),
            finishButtonText: 'التالي',
            pageBackgroundColor: Color(Appcolorlightmode.whiteColor),
            finishButtonStyle: FinishButtonStyle(
              // hoverColor: Color(Appcolorlightmode.darkGreen),
              backgroundColor: Color(Appcolorlightmode.buttonFirstColor)
            ),
            onFinish: (){
              Navigator.pushReplacementNamed(context, "/Login");
            },
            //  skipTextButton: Text('Skip'),
            //  trailing: Text('Login'),
            background: [
            Container(color:Color(Appcolorlightmode.whiteColor) ,),
              Container(color:Color(Appcolorlightmode.whiteColor) ,),
              Container(color:Color(Appcolorlightmode.whiteColor) ,),
              Container(color:Color(Appcolorlightmode.whiteColor) ,),
              Container(color:Color(Appcolorlightmode.whiteColor) ,),

            ],
            totalPage: 5,
            speed: 1.8,
            pageBodies: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/background.jpg'), // المسار إلى الصورة
                    fit: BoxFit.cover,
                  ),
                ),
                child: SizedBox(
                  height: 200, width: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: 100,width: 100,
                          child: Image.asset("assets/images/5-stars.png")),
                      SizedBox(height: 50,),
                          Text('مرحبًا بك\n في تطبيق مركز رواد المستقبل',textAlign: TextAlign.center,style: TextStyle(fontSize: 18),)
                    ],
                  ),
                ),

              ),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/background.jpg'), // المسار إلى الصورة
                    fit: BoxFit.cover,
                  ),
                ),
                child: SizedBox(
                  height: 200, width: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: 100,width: 100,
                          child: Image.asset("assets/images/reading.png")),
                      SizedBox(height: 50,),
                      Text('اكتشف البرامج المنضمّ إليها لدينا\n واطلع على تقييماتك ومستواك فيها',textAlign: TextAlign.center,style: TextStyle(fontSize: 18),)
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/background.jpg'), // المسار إلى الصورة
                    fit: BoxFit.cover,
                  ),
                ),
                child: SizedBox(
                  height: 200, width: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: 100,width: 100,
                          child: Image.asset("assets/images/suggestion.png")),
                      SizedBox(height: 50,),
                      Text('لديك شكوى؟\n قم برفعها مباشرةً من خلال التطبيق وسنكون في خدمتك',textAlign: TextAlign.center,style: TextStyle(fontSize: 18),)
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/background.jpg'), // المسار إلى الصورة
                    fit: BoxFit.cover,
                  ),
                ),
                child: SizedBox(
                  height: 200, width: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 100,width: 100,
                          child: Image.asset("assets/images/roommate.png")),
                      SizedBox(height: 50,),
                      Text('احصل على تفاصيل حول معلومات السكن\n وزملاء الغرفة معك',textAlign: TextAlign.center,style: TextStyle(fontSize: 18),)
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/background.jpg'), // المسار إلى الصورة
                    fit: BoxFit.cover,
                  ),
                ),
                child: SizedBox(
                  height: 200, width: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: 100,width: 100,
                          child: Image.asset("assets/images/thank-you.png")),
                      SizedBox(height: 50,),
                      Text('شكرًا لاختيارك مركز رواد المستقبل\n نحن هنا لدعمك في رحلتك التعليمية',textAlign: TextAlign.center,style: TextStyle(fontSize: 18),)
                    ],
                  ),
                ),
              ),
            ],
        ),
      ),
    );
  }
}
