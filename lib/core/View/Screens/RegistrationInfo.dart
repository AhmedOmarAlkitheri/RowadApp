import 'package:flutter/material.dart';
import 'package:rowadapp/core/View/Widgets/ContainerButton.dart';
import 'package:rowadapp/core/View/Widgets/Space.dart';
import 'package:rowadapp/core/View/Widgets/UpperRegistrationContainer.dart';
import 'package:rowadapp/core/View/Widgets/WidgetTextFormField.dart';
import 'package:rowadapp/global/components/Validation.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

class Registrationinfo extends StatefulWidget {
  const Registrationinfo({super.key});

  @override
  State<Registrationinfo> createState() => _RegistrationinfoState();
}

class _RegistrationinfoState extends State<Registrationinfo> {
  int check = 1;
  GlobalKey<FormState> formKey = GlobalKey();
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
                        hintText: "من فضلك أدخل أسمك الرباعي",
                        labelText: "أسمك الرباعي",
                        //  prefixIcon: Icon(Icons.account_circle),
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.done,
                        autovalidateMode: AutovalidateMode.onUnfocus,
                        validator: (p0) =>
                            InputValidator.validateArabicName(p0),
                        onChanged: (value) {
                          setState(() {});
                        },
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
                                    validator: (p0) =>
                                        InputValidator.validateArabic(p0),
                                    hintText: "المحافظة",
                                    labelText: "مكان الميلاد",
                                    onChanged: (value) {
                                      setState(() {});
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
                                    hintText: "أدخل المديرية",
                                    labelText: "المديرية",
                                    validator: (p0) =>
                                        InputValidator.validateArabic(p0),
                                    onChanged: (value) {
                                      setState(() {});
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
                        hintText: "المنطقة , الحي",
                        labelText: "المنطقة",
                        validator: (p0) => InputValidator.validateArabic(p0),
                        onChanged: (value) {
                          setState(() {});
                        },
                        //     prefixIcon: Icon(Icons.account_circle),
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.done,
                      ),
                      const Space(
                        height: 15,
                      ),
                      Widgettextformflied(
                        hintText: "المحافظة",
                        labelText: "مكان الاقامة الحالي",
                        validator: (p0) => InputValidator.validateArabic(p0),
                        onChanged: (value) {
                          setState(() {});
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
                                if (formKey.currentState!.validate()) {
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
