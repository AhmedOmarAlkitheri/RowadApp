import 'package:flutter/material.dart';
import 'package:rowadapp/core/DB/data.dart';
import 'package:rowadapp/core/View/Widgets/ContainerButton.dart';
import 'package:rowadapp/core/View/Widgets/Space.dart';
import 'package:rowadapp/core/View/Widgets/UpperRegistrationContainer.dart';
import 'package:rowadapp/core/View/Widgets/WidgetTextFormField.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

class Studyinformation extends StatefulWidget {
  const Studyinformation({super.key});

  @override
  State<Studyinformation> createState() => _StudyinformationState();
}

class _StudyinformationState extends State<Studyinformation> {
  int check = 1;
  late String d = "الابداع";
  String classStudent = "التاسع";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
              height: 290,
              child: Upperregistrationcontainer(
                isActive: true,
                location: 3,
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
                      "المدرسة :",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    const Space(
                      height: 20,
                    ),
                    const Widgettextformflied(
                      hintText: "أسم المدرسة المتخرج منها",
                      // labelText: "أسم ولي الأمر",
                      //  prefixIcon: Icon(Icons.account_circle),
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.done,
                    ),
                    const Space(
                      height: 20,
                    ),
                    const Text(
                      "النسبة :",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    const Space(
                      height: 20,
                    ),
                    const Widgettextformflied(
                      hintText: "نسبة أخر صف دراسي",
                      //    labelText: "مكان الميلاد",
                      //     prefixIcon: Icon(Icons.account_circle),
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.done,
                    ),
                    const Space(
                      height: 20,
                    ),
                    const Text(
                      "الصف الطالع إليه :",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    const Space(
                      height: 20,
                    ),
                    DropdownButton(
                        menuWidth: MediaQuery.of(context).size.width,
                        value: classStudent,
                        items: classes
                            .map((e) =>
                                DropdownMenuItem(value: e, child: Text(e)))
                            .toList(),
                        onChanged: (val) {
                          classStudent = val!;
                          setState(() {});
                        }),
                    const Space(
                      height: 20,
                    ),
                    const Text(
                      "ماهي المدرسة التي ترغب في الدراسة فيها ؟",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    DropdownButton(
                        menuWidth: MediaQuery.of(context).size.width,
                        value: d,
                        items: school
                            .map((e) =>
                                DropdownMenuItem(value: e, child: Text(e)))
                            .toList(),
                        onChanged: (val) {
                          d = val!;
                          setState(() {});
                        }),
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
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, "/Contactinformation");
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
