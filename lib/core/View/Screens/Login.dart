import 'package:flutter/material.dart';
import 'package:rowadapp/core/View/Widgets/ContainerButton.dart';
import 'package:rowadapp/core/View/Widgets/Space.dart';
import 'package:rowadapp/core/View/Widgets/WidgetTextFormField.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          //   color: Colors.black,
          gradient: LinearGradient(
            colors: [const Color(AppColor.secondaryColor), Colors.white],
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomStart,
          ),
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              right: -50,
              top: 17.5,
              child: Container(
                width: 172,
                height: 185,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(AppColor.secondarythereColor)),
              ),
            ),
            Positioned(
                // right: -55,
                top: 55,
                right: 10,
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/pictureRowad.jpg"),
                          fit: BoxFit.fill)),
                )),
            Positioned(
              left: 40,
              top: 80,
              child: Container(
                height: 50,
                child: Text(
                  "تسجيل دخول",
                  style: TextStyle(
                      color: Color(AppColor.colorBlack),
                      fontWeight: FontWeight.bold,
                      fontSize: 28),
                ),
              ),
            ),
            Positioned(
              top: 170,
              child: Container(
                padding: EdgeInsets.only(left: 20, right: 30),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 180,
                decoration: BoxDecoration(
                    color: Color(AppColor.secondaryTwoColor),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Space(
                        height: 40,
                      ),
                      Text(
                        "أسم المستخدم",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Space(
                        height: 10,
                      ),
                      Widgettextformflied(
                        hintText: "أسم المستخدم",
                        labelText: "أسم المستخدم",
                        prefixIcon: Icon(Icons.account_circle_rounded),
                        cursorColor: Color(AppColor.primaryColor),
                        keyboardType: TextInputType.phone,
                        textInputAction: TextInputAction.done,
                      ),
                      Space(
                        height: 30,
                      ),
                      Text(
                        "كلمة المرور",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Space(
                        height: 10,
                      ),
                      Widgettextformflied(
                        hintText: "كلمة المرور",
                        labelText: "كلمة المرور",
                        prefixIcon: Icon(Icons.password_rounded),
                        cursorColor: Color(AppColor.primaryColor),
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.done,
                      ),
                      Space(
                        height: 50,
                      ),
                      Center(
                          child: Containerbutton(
                        name: "تسجيل دخول",
                        allBorderRadius: 15,
                        onPressed: () {},
                      )),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
