import 'package:flutter/material.dart';
import 'package:rowadapp/core/View/Widgets/ContainerButton.dart';
import 'package:rowadapp/core/View/Widgets/Space.dart';
import 'package:rowadapp/core/View/Widgets/UpperRegistrationContainer.dart';
import 'package:rowadapp/core/View/Widgets/WidgetTextFormField.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

class Registrationinfo extends StatefulWidget {
  const Registrationinfo({super.key});

  @override
  State<Registrationinfo> createState() => _RegistrationinfoState();
}

class _RegistrationinfoState extends State<Registrationinfo> {
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
                location: 1,
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
                      " أسمك الرباعي :",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    const Space(
                      height: 15,
                    ),
                    const Widgettextformflied(
                      hintText: "من فضلك أدخل أسمك الرباعي",
                      labelText: "أسمك الرباعي",
                      //  prefixIcon: Icon(Icons.account_circle),
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.done,
                    ),
                    const Space(
                      height: 20,
                    ),
                    const Row(
                      children: [
                        Text(
                          "تاريخ الميلاد :",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        Text(
                          "التاريخ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        )
                      ],
                    ),
                    const Space(
                      height: 20,
                    ),
                    // Row(
                    //   children: [
                    //     Text(
                    //       "مكان الميلاد :",
                    //       style: TextStyle(
                    //           fontWeight: FontWeight.bold, fontSize: 15),
                    //     ),
                    //     Space(
                    //       width: 15,
                    //     ),
                    //     Text(
                    //       "المديرية :",
                    //       style: TextStyle(
                    //           fontWeight: FontWeight.bold, fontSize: 15),
                    //     ),
                    //   ],
                    // ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "مكان الميلاد :",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                Space(
                                  height: 10,
                                ),
                                Widgettextformflied(
                                  hintText: "المحافظة",
                                  labelText: "مكان الميلاد",
                                  //     prefixIcon: Icon(Icons.account_circle),
                                  keyboardType: TextInputType.name,
                                  textInputAction: TextInputAction.done,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Space(
                          width: 15,
                        ),
                        Expanded(
                          child: Container(
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "المديرية :",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                Space(
                                  height: 10,
                                ),
                                Widgettextformflied(
                                  hintText: "أدخل المديرية",
                                  labelText: "المديرية",
                                  //     prefixIcon: Icon(Icons.account_circle),
                                  keyboardType: TextInputType.name,
                                  textInputAction: TextInputAction.done,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Space(
                      height: 15,
                    ),
                    const Widgettextformflied(
                      hintText: "المنطقة , الحي",
                      labelText: "المنطقة",
                      //     prefixIcon: Icon(Icons.account_circle),
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.done,
                    ),

                    const Space(
                      height: 15,
                    ),
                    const Widgettextformflied(
                      hintText: "المحافظة",
                      labelText: "مكان الاقامة الحالي",
                      //     prefixIcon: Icon(Icons.account_circle),
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.done,
                    ),
                    const Space(
                      height: 15,
                    ),
                    const Text(
                      "هل تعاني من أي مرض ؟",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    const Space(
                      height: 10,
                    ),
                    Widgettextformflied(
                      hintText: "لا",
                      maxLines: check,
                      //  labelText: "",
                      //     prefixIcon: Icon(Icons.account_circle),
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.done,
                      onChanged: (val) {
                        if (val == "نعم") {
                          check = 10;
                        } else {
                          check = 1;
                        }
                        setState(() {});
                      },
                    ),
                    const Space(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Containerbutton(
                            allBorderRadius: 15,
                            name: "التالي",
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, "/Registrationguardian");
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
