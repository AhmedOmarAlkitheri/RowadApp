import 'package:flutter/material.dart';
import 'package:rowadapp/core/View/Widgets/ContainerButton.dart';
import 'package:rowadapp/core/View/Widgets/Space.dart';
import 'package:rowadapp/core/View/Widgets/UpperRegistrationContainer.dart';
import 'package:rowadapp/core/View/Widgets/WidgetTextFormField.dart';
import 'package:rowadapp/core/ViewModel/Registration_VM.dart';
import 'package:rowadapp/global/components/Validation.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

import '../../../global/theme/AppColor/appColor_LightMode.dart';

class Contactinformation extends StatelessWidget {
  Contactinformation({super.key});

  int check = 1;

  GlobalKey<FormState> formKey = GlobalKey();

  TextEditingController guardianPhone = TextEditingController();

  TextEditingController phone = TextEditingController();

  TextEditingController whatsapp = TextEditingController();

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
                  location: 4,
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
                          "رقم ولي الأمر :",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        const Space(
                          height: 15,
                        ),
                        Widgettextformflied(
                          controller: guardianPhone,
                          hintText: "رقم ولي الأمر",
                          validator: (p0) =>
                              InputValidator.validatePhoneNumber(p0),
                          onChanged: (value) {
                            guardianPhone.text = value;
                          },
                          // labelText: "أسم ولي الأمر",
                          prefixIcon: const Icon(Icons.phone_android_rounded),
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.done,
                        ),
                        const Space(
                          height: 20,
                        ),
                        const Text(
                          "رقم الهاتف :",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        const Space(
                          height: 20,
                        ),
                        Widgettextformflied(
                          controller: phone,
                          hintText: "رقم الهاتف",
                          validator: (p0) =>
                              InputValidator.validatePhoneNumber(p0),
                          onChanged: (value) {
                            phone.text = value;
                          },
                          //    labelText: "مكان الميلاد",
                          prefixIcon: const Icon(Icons.phone_enabled_rounded),
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.done,
                        ),
                        const Space(
                          height: 20,
                        ),
                        const Text(
                          "رقم الواتساب :",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        const Space(
                          height: 20,
                        ),
                        Widgettextformflied(
                          controller: whatsapp,
                          hintText: "رقم الواتساب",
                          validator: (p0) =>
                              InputValidator.validatePhoneNumber(p0),
                          onChanged: (value) {
                            whatsapp.text = value;
                          },
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
                                  Navigator.pop(context, "/Studyinformation");
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
                                            .registrationinfo["guardian_mobile"] =
                                        guardianPhone.text;
                                    RegistrationVm
                                            .registrationinfo["phone_number"] =
                                        phone.text;
                                    RegistrationVm
                                            .registrationinfo["mobile_number"] =
                                        whatsapp.text;
                                    Navigator.pushNamed(
                                        context, "/TellAboutYourselfScreen");
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