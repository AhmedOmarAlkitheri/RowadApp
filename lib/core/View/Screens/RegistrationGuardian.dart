import 'package:flutter/material.dart';
import 'package:rowadapp/core/View/Widgets/ContainerButton.dart';
import 'package:rowadapp/core/View/Widgets/Space.dart';
import 'package:rowadapp/core/View/Widgets/UpperRegistrationContainer.dart';
import 'package:rowadapp/core/View/Widgets/WidgetTextFormField.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

class Registrationguardian extends StatefulWidget {
  const Registrationguardian({super.key});

  @override
  State<Registrationguardian> createState() => _RegistrationguardianState();
}

class _RegistrationguardianState extends State<Registrationguardian> {
  int check = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
              height: 290,
              child: Upperregistrationcontainer(
                isActive: true,
                location: 2,
              )),
          Expanded(
            child: Container(
              color: const Color(AppColor.secondaryTwoColor),
              padding: const EdgeInsets.only(left: 20, right: 15),
              width: MediaQuery.of(context).size.width,
              //  height: MediaQuery.of(context).size.height - 400,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Space(
                      height: 20,
                    ),
                    const Text(
                      "الأسم :",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    const Space(
                      height: 15,
                    ),
                    const Widgettextformflied(
                      hintText: "أسم ولي الأمر",
                      // labelText: "أسم ولي الأمر",
                      //  prefixIcon: Icon(Icons.account_circle),
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.done,
                    ),
                    const Space(
                      height: 20,
                    ),
                    const Text(
                      "صلة القرابة :",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    const Space(
                      height: 20,
                    ),
                    const Widgettextformflied(
                      hintText: "صلة القرابة",
                      //    labelText: "مكان الميلاد",
                      //     prefixIcon: Icon(Icons.account_circle),
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.done,
                    ),
                    const Text(
                      "المهنة :",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    const Space(
                      height: 10,
                    ),
                    const Widgettextformflied(
                      hintText: "مهنة ولي الامر",
                      //   labelText: "مكان الميلاد",
                      //     prefixIcon: Icon(Icons.account_circle),
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.done,
                    ),
                    const Space(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Containerbutton(
                            allBorderRadius: 15,
                            name: "تراجع",
                            onPressed: () {
                              Navigator.pop(context, "/RegistrationInfo");
                            }),
                        const Space(
                          width: 10,
                        ),
                        Containerbutton(
                            allBorderRadius: 15,
                            name: "التالي",
                            onPressed: () {
                              Navigator.pushNamed(context, "/Studyinformation");
                            }),
                      ],
                    ),
                    const Space(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
