import 'package:flutter/material.dart';
import 'package:rowadapp/core/View/Widgets/ContainerButton.dart';
import 'package:rowadapp/core/View/Widgets/Space.dart';
import 'package:rowadapp/core/View/Widgets/UpperRegistrationContainer.dart';
import 'package:rowadapp/core/View/Widgets/WidgetTextFormField.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

class Contactinformation extends StatefulWidget {
  const Contactinformation({super.key});

  @override
  State<Contactinformation> createState() => _ContactinformationState();
}

class _ContactinformationState extends State<Contactinformation> {
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
                location: 4,
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
                      "رقم ولي الأمر :",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    const Space(
                      height: 15,
                    ),
                    const Widgettextformflied(
                      hintText: "رقم ولي الأمر",
                      // labelText: "أسم ولي الأمر",
                      prefixIcon: Icon(Icons.phone_android_rounded),
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.done,
                    ),
                    const Space(
                      height: 20,
                    ),
                    const Text(
                      "رقم الهاتف :",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    const Space(
                      height: 20,
                    ),
                    const Widgettextformflied(
                      hintText: "رقم الهاتف",
                      //    labelText: "مكان الميلاد",
                      prefixIcon: Icon(Icons.phone_enabled_rounded),
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.done,
                    ),
                    const Space(
                      height: 20,
                    ),
                    const Text(
                      "رقم الواتساب :",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    const Space(
                      height: 20,
                    ),
                    const Widgettextformflied(
                      hintText: "رقم الواتساب",
                      //   labelText: "مكان الميلاد",
                      //  prefixIcon: Icon(Icons.wechat_rounded),
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
                              Navigator.pop(context, "/Registrationguardian");
                            }),
                        const Space(
                          width: 10,
                        ),
                        Containerbutton(
                            allBorderRadius: 15,
                            name: "التالي",
                            onPressed: () {}),
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
