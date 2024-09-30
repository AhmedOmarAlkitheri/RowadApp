import 'package:flutter/material.dart';
import 'package:rowadapp/core/View/Widgets/ContainerButton.dart';
//import 'package:rowadapp/core/View/Widgets/ContainerButton.dart';
import 'package:rowadapp/core/View/Widgets/Space.dart';
import 'package:rowadapp/core/View/Widgets/UpperRegistrationContainer.dart';
import 'package:rowadapp/core/View/Widgets/WidgetTextFormField.dart';
import 'package:rowadapp/global/components/Validation.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

class TellAboutYourselfScreen extends StatefulWidget {
  const TellAboutYourselfScreen({super.key});

  @override
  State<TellAboutYourselfScreen> createState() =>
      _TellAboutYourselfScreenState();
}

class _TellAboutYourselfScreenState extends State<TellAboutYourselfScreen> {
  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const SizedBox(
            height: 290,
            child: Upperregistrationcontainer(
              isActive: true,
              location: 5,
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
                      "المهارات و المواهب و الهوايات :",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    const Space(
                      height: 20,
                    ),
                    Scrollbar(
                      scrollbarOrientation: ScrollbarOrientation.right,
                      thickness: 10,
                      child: Widgettextformflied(
                        validator: (p0) =>
                            InputValidator.validateMixedInput(p0),
                        onChanged: (value) {
                          setState(() {});
                        },
                        hintText: "المهارات و المواهب و الهوايات",
                        maxLines: 3,
                        //  maxLength: 10,
                        labelText: "لدي",
                        //     prefixIcon: Icon(Icons.account_circle),
                        //    keyboardType: TextInputType.name,
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.newline,
                      ),
                    ),
                    const Space(
                      height: 20,
                    ),
                    const Text(
                      "أبرز المشاركات و الانجازات :",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    const Space(
                      height: 20,
                    ),
                    Scrollbar(
                      scrollbarOrientation: ScrollbarOrientation.right,
                      thickness: 10,
                      child: Widgettextformflied(
                        validator: (p0) =>
                            InputValidator.validateMixedInput(p0),
                        onChanged: (value) {
                          setState(() {});
                        },
                        hintText: "أبرز المشاركات و الانجازات",
                        maxLines: 3,
                        //  maxLength: 10,
                        labelText: "شاركت",
                        //     prefixIcon: Icon(Icons.account_circle),
                        //    keyboardType: TextInputType.name,
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.newline,
                      ),
                    ),
                    const Space(
                      height: 20,
                    ),
                    const Text(
                      "ماهو طموحك في المستقبل :",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    const Space(
                      height: 20,
                    ),
                    Scrollbar(
                      scrollbarOrientation: ScrollbarOrientation.right,
                      thickness: 10,
                      child: Widgettextformflied(
                        validator: (p0) =>
                            InputValidator.validateMixedInput(p0),
                        onChanged: (value) {
                          setState(() {});
                        },
                        hintText: "ماهو طموحك في المستقبل",
                        maxLines: 3,
                        //  maxLength: 10,
                        labelText: "طموحي",
                        //     prefixIcon: Icon(Icons.account_circle),
                        //    keyboardType: TextInputType.name,
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.newline,
                      ),
                    ),
                    const Space(
                      height: 20,
                    ),
                    const Text(
                      "لماذا تريد الالتحاق بالمركز:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    const Space(
                      height: 20,
                    ),
                    Scrollbar(
                      scrollbarOrientation: ScrollbarOrientation.right,
                      thickness: 10,
                      child: Widgettextformflied(
                        validator: (p0) =>
                            InputValidator.validateMixedInput(p0),
                        onChanged: (value) {
                          setState(() {});
                        },
                        hintText: "لماذا تريد الالتحاق بالمركز",
                        maxLines: 3,
                        //  maxLength: 10,
                        labelText: "لدي",
                        //     prefixIcon: Icon(Icons.account_circle),
                        //    keyboardType: TextInputType.name,
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.newline,
                      ),
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
                            Navigator.pop(context, "/Contactinformation");
                          },
                        ),
                        const Space(
                          width: 10,
                        ),
                        Containerbutton(
                            allBorderRadius: 15,
                            name: "إرسال",
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                Navigator.pushNamed(context, "/Login");
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
      ]),
    );
  }
}
