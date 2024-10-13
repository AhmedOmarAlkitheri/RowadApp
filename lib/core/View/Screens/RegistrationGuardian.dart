import 'package:flutter/material.dart';
import 'package:rowadapp/core/View/Widgets/ContainerButton.dart';
import 'package:rowadapp/core/View/Widgets/Space.dart';
import 'package:rowadapp/core/View/Widgets/UpperRegistrationContainer.dart';
import 'package:rowadapp/core/View/Widgets/WidgetTextFormField.dart';
import 'package:rowadapp/core/ViewModel/Registration_VM.dart';
import 'package:rowadapp/global/components/Validation.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

import '../../../global/theme/AppColor/appColor_LightMode.dart';

class Registrationguardian extends StatelessWidget {
  Registrationguardian({super.key});

  int check = 1;

  GlobalKey<FormState> formKey = GlobalKey();

  TextEditingController guardianName = TextEditingController();

  TextEditingController relationship = TextEditingController();

  TextEditingController profession = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                color: const Color(Appcolorlightmode.whiteColor),
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
                          "الأسم :",
                          style: TextStyle(
                            fontFamily: 'almarai',
                            fontWeight: FontWeight.w500,
                               fontSize: 15),
                        ),
                        const Space(
                          height: 15,
                        ),
                        Widgettextformflied(
                          controller: guardianName,
                          hintText: "أسم ولي الأمر",
                          validator: (p0) =>
                              InputValidator.validateGuardianName(p0),
                          onChanged: (value) {
                            guardianName.text = value;
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
                          "صلة القرابة :",
                          style: TextStyle(
 fontFamily: 'almarai',
                            fontWeight: FontWeight.w500,                              fontSize: 15),
                        ),
                        const Space(
                          height: 20,
                        ),
                        Widgettextformflied(
                          controller: relationship,
                          hintText: "صلة القرابة",
                          validator: (p0) => InputValidator.validateArabic(p0),
                          onChanged: (value) {
                            relationship.text = value;
                          },
                          //    labelText: "مكان الميلاد",
                          //     prefixIcon: Icon(Icons.account_circle),
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.done,
                        ),
                        const Text(
                          "المهنة :",
                          style: TextStyle(
 fontFamily: 'almarai',
                            fontWeight: FontWeight.w500,                               fontSize: 15),
                        ),
                        const Space(
                          height: 10,
                        ),
                        Widgettextformflied(
                          controller: profession,
                          hintText: "مهنة ولي الامر",
                          validator: (p0) => InputValidator.validateArabic(p0),
                          onChanged: (value) {
                            profession.text = value;
                          },
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
                                  if (formKey.currentState!.validate()) {
                                    RegistrationVm
                                            .registrationinfo['guardian_name'] =
                                        guardianName.text;
                                    RegistrationVm
                                            .registrationinfo['relationship'] =
                                        relationship.text;
      
                                    RegistrationVm.registrationinfo[
                                        'guardian_occupation'] = profession.text;
                                    Navigator.pushNamed(
                                        context, "/Studyinformation");
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
      ),
    );
  }
}
