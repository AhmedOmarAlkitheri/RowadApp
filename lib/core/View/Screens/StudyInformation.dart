import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rowadapp/core/DB/data.dart';
import 'package:rowadapp/core/View/Widgets/ContainerButton.dart';
import 'package:rowadapp/core/View/Widgets/Space.dart';
import 'package:rowadapp/core/View/Widgets/UpperRegistrationContainer.dart';
import 'package:rowadapp/core/View/Widgets/WidgetTextFormField.dart';
import 'package:rowadapp/core/ViewModel/Registration_VM.dart';
import 'package:rowadapp/global/components/Validation.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

class Studyinformation extends StatelessWidget {
  Studyinformation({super.key});

  int check = 1;

  GlobalKey<FormState> formKey = GlobalKey();

  String favSchool = "الابداع";

  String next_grade = "تاسع";

  TextEditingController school_name = TextEditingController();

  TextEditingController last_grade_percentage = TextEditingController();

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
                child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Space(
                        height: 20,
                      ),
                      const Text(
                        "المدرسة :",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      const Space(
                        height: 20,
                      ),
                      Widgettextformflied(
                        controller: school_name,
                        hintText: "أسم المدرسة المتخرج منها",
                        validator: (p0) => InputValidator.validateArabic(p0),
                        onChanged: (value) {
                          school_name.text = value;
                        },
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
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      const Space(
                        height: 20,
                      ),
                      Widgettextformflied(
                        controller: last_grade_percentage,
                        hintText: "نسبة أخر صف دراسي",
                        validator: (p0) => InputValidator.validateNumbers(p0),
                        onChanged: (value) {
                          last_grade_percentage.text = value;
                        },
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
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      const Space(
                        height: 20,
                      ),
                      Consumer<RegistrationVm>(
                        builder: (context, value, child) => DropdownButton(
                            menuWidth: MediaQuery.of(context).size.width,
                            value: value.next_grade ,
                            items: classes
                                .map((e) =>
                                    DropdownMenuItem(value: e, child: Text(e)))
                                .toList(),
                            onChanged: (val) {
                              next_grade = val!;
                              value.updateNextGrade(val);
                            }),
                      ),
                      const Space(
                        height: 20,
                      ),
                      const Text(
                        "ماهي المدرسة التي ترغب في الدراسة فيها ؟",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      Consumer<RegistrationVm>(
                        builder: (context, registration, child) =>
                            DropdownButton(
                                menuWidth: MediaQuery.of(context).size.width,
                                value: registration.school ,
                                items: schools
                                    .map((e) => DropdownMenuItem(
                                        value: e, child: Text(e)))
                                    .toList(),
                                onChanged: (val) {
                                  favSchool = val!;
                                  registration.updateSchool(val);
                                }),
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
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  RegistrationVm
                                          .registrationinfo['school_name'] =
                                      school_name.text;
                                  RegistrationVm.registrationinfo[
                                          'last_grade_percentage'] =
                                      last_grade_percentage.text;

                                  RegistrationVm
                                          .registrationinfo['next_grade'] =
                                      next_grade;
                                  RegistrationVm
                                          .registrationinfo['desired_school'] =
                                      favSchool;
                                  print(RegistrationVm.registrationinfo);
                                  Navigator.pushNamed(
                                      context, "/Contactinformation");
                                }
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
          ),
        ],
      ),
    );
  }
}