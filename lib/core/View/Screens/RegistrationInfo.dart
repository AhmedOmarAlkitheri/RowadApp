import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:rowadapp/core/View/Widgets/ContainerButton.dart';
import 'package:rowadapp/core/View/Widgets/ContainerImage.dart';
import 'package:rowadapp/core/View/Widgets/Space.dart';
import 'package:rowadapp/core/View/Widgets/UpperRegistrationContainer.dart';
import 'package:rowadapp/core/View/Widgets/WidgetTextFormField.dart';
import 'package:rowadapp/core/ViewModel/Registration_VM.dart';
import 'package:rowadapp/global/components/PickerTime.dart';
import 'package:rowadapp/global/components/Validation.dart';
import 'package:rowadapp/global/constraints/app_color.dart';
import 'package:rowadapp/global/theme/AppColor/appColor_LightMode.dart';

class Registrationinfo extends StatelessWidget {
  Registrationinfo({super.key});

  int check = 1;

  // var img;
  // static XFile? image_person;
  DateTime? selectedDate;

  GlobalKey<FormState> formKey = GlobalKey();

  TextEditingController studName = TextEditingController();

  TextEditingController placeOfBirth = TextEditingController();

  TextEditingController currentplaceResidence = TextEditingController();

  TextEditingController area = TextEditingController();

  TextEditingController Directorate = TextEditingController();
  TextEditingController disease = TextEditingController();
  TextEditingController current_residence_details = TextEditingController();

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
                child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   crossAxisAlignment: CrossAxisAlignment.center,
                      //   children: [
                      //     Consumer<RegistrationVm>(
                      //       builder: (context, o, child) {
                      //         if (o.image?.path == null) {
                      //           img = "assets/images/personprofile.png";
                      //           image_person = XFile(img.path);
                      //         } else {
                      //           img = o.image?.path;
                      //           image_person = XFile(img.path);
                      //         }
                      //         return ImageContainer(
                      //           image: o.image,
                      //         );
                      //       },
                      //     ),
                      //   ],
                      // ),
                      // const Space(
                      //   height: 20,
                      // ),
                      // const Text("أضف صورتك",
                      //     style: TextStyle(
                      //         fontWeight: FontWeight.bold, fontSize: 20)),
                      const Space(
                        height: 20,
                      ),
                      const Text(
                        " أسمك الرباعي :",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      const Space(
                        height: 15,
                      ),
                      Widgettextformflied(
                        controller: studName,
                        hintText: "من فضلك أدخل أسمك الرباعي",
                        labelText: "أسمك الرباعي",
                        //  prefixIcon: Icon(Icons.account_circle),
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.done,
                        autovalidateMode: AutovalidateMode.onUnfocus,
                        validator: (p0) =>
                            InputValidator.validateArabicName(p0),
                        onChanged: (value) {
                          studName.text = value;
                        },
                      ),
                      const Space(
                        height: 20,
                      ),
                   




 Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "تاريخ الميلاد :",
                              style: TextStyle(
 fontFamily: 'almarai',
                            fontWeight: FontWeight.w500,                                fontSize: 15,
                                color: Color(Appcolorlightmode.blackColor),
                              ),
                            ),
                            Consumer<RegistrationVm>(
                              builder: (context, value, child) => InkWell(
                                child: Text(
                                  value.currentDate != null
                                      ? '${value.currentDate?.day}/${value.currentDate?.month}/${value.currentDate?.year}'
                                      : '      لم تحدد تاريخ ميلادك',
                                  style: const TextStyle(
                                     fontFamily: 'almarai',
                            fontWeight: FontWeight.w500,
                                    fontSize: 15),
                                ),
                                onTap: () async {
                                  selectedDate = (await showDatePicker(
                                    context: context,
                                    initialDate: selectedDate ?? DateTime.now(),
                                    firstDate: DateTime(1900),
                                    lastDate: DateTime(2100),
                                  ));
                                  if (selectedDate != null) {
                                    value.updateDate(selectedDate!);
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                      const Space(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "مكان الميلاد :",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  const Space(
                                    height: 10,
                                  ),
                                  Widgettextformflied(
                                    controller: placeOfBirth,
                                    validator: (p0) =>
                                        InputValidator.validateArabic(p0),
                                    hintText: "المحافظة",
                                    labelText: "مكان الميلاد",
                                    onChanged: (value) {
                                      placeOfBirth.text = value;
                                    },
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
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Text(
                                    "المديرية :",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  const Space(
                                    height: 10,
                                  ),
                                  Widgettextformflied(
                                    controller: Directorate,
                                    hintText: "أدخل المديرية",
                                    labelText: "المديرية",
                                    validator: (p0) =>
                                        InputValidator.validateArabic(p0),
                                    onChanged: (value) {
                                      Directorate.text = value;
                                    },
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
                      Widgettextformflied(
                        controller: area,
                        hintText: "المنطقة , الحي",
                        labelText: "المنطقة",
                        validator: (p0) => InputValidator.validateArabic(p0),
                        onChanged: (value) {
                          area.text = value;
                        },
                        //     prefixIcon: Icon(Icons.account_circle),
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.done,
                      ),
                      const Space(
                        height: 15,
                      ),
                      Widgettextformflied(
                        controller: currentplaceResidence,
                        hintText: "المحافظة",
                        labelText: "مكان الاقامة الحالي",
                        validator: (p0) => InputValidator.validateArabic(p0),
                        onChanged: (value) {
                          currentplaceResidence.text = value;
                        },
                        //     prefixIcon: Icon(Icons.account_circle),
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.done,
                      ),
                      const Space(
                        height: 15,
                      ),
                      Widgettextformflied(
                        controller: current_residence_details,
                        hintText: "المديرية",
                        labelText: "مكان الاقامة الحالي/المديرية,المنطقة",
                        validator: (p0) => InputValidator.validateArabic(p0),
                        onChanged: (value) {
                          current_residence_details.text = value;
                        },
                        //     prefixIcon: Icon(Icons.account_circle),
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.done,
                      ),
                      const Space(
                        height: 15,
                      ),
                      const Text(
                        "هل تعاني من أي مرض ؟",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      const Space(
                        height: 10,
                      ),
                      Widgettextformflied(
                        controller: disease,
                        hintText: "لا",
                        maxLines: check,
                        //  labelText: "",
                        //     prefixIcon: Icon(Icons.account_circle),
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.done,
                        onChanged: (val) {
                          disease.text = "لا";
                          disease.text = val;
                          // if (val == "نعم") {
                          //   check = 10;
                          // } else {
                          //   check = 1;
                          // }
                          // setState(() {});
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
                                if (formKey.currentState!.validate()) {
                                  // RegistrationVm.registrationinfo["image"] =
                                  //     image_person!.path;
                                  RegistrationVm
                                          .registrationinfo['date_of_birth'] =
                                      selectedDate.toString().split(' ')[0];

                                  RegistrationVm.registrationinfo['full_name'] =
                                      studName.text;
                                  RegistrationVm
                                          .registrationinfo['place_of_birth'] =
                                      placeOfBirth.text;
                                  RegistrationVm.registrationinfo[
                                          'current_residence'] =
                                      currentplaceResidence.text;
                                  RegistrationVm.registrationinfo[
                                          'current_residence_details'] =
                                      current_residence_details.text;

                                  RegistrationVm.registrationinfo['area'] =
                                      area.text;
                                  RegistrationVm
                                          .registrationinfo['governorate'] =
                                      Directorate.text;
                                  RegistrationVm.registrationinfo[
                                          'health_conditions'] =
                                      disease.text ?? "لا";

                                  print(
                                      "fdgghgh ${RegistrationVm.registrationinfo}");

                                  Navigator.pushNamed(
                                      context, "/Registrationguardian");
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