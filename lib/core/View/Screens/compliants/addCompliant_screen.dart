import 'package:flutter/material.dart';
import 'package:rowadapp/core/View/Widgets/compliant/RoundeTextBox.dart';
import 'package:rowadapp/core/View/Widgets/compliant/header.dart';
import 'package:rowadapp/core/View/Widgets/compliant/roundedButton.dart';
import 'package:rowadapp/core/View/Widgets/compliant/textField.dart';
import 'package:rowadapp/core/View/Widgets/compliant/textTitle.dart';
import 'package:rowadapp/core/View/Widgets/compliant/whiteRoubdedBackground.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

class AddcompliantScreen extends StatelessWidget {
  AddcompliantScreen({super.key});
  TextEditingController? titleText;
  TextEditingController? contentText;
  CircularProgressIndicator? progress;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [const Color(AppColor.secondaryColor), Colors.white],
                  begin: AlignmentDirectional.topStart,
                  end: AlignmentDirectional.bottomEnd),
            ),
            child: Container(
                margin: EdgeInsets.only(right: 10, left: 10),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Header(
                        title: 'اضافة شكوى', imagePath: 'assets/add_file.png'),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Whiteroubdedbackground(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 55,
                            ),
                            Texttitle(title: 'عنوان الشكوى'),
                            SizedBox(
                              height: 20,
                            ),
                            Roundetextbox(
                              child: Textfield(controller: this.titleText),
                            ),
                            SizedBox(
                              height: 45,
                            ),
                            Texttitle(title: 'محتوى الشكوى'),
                            SizedBox(
                              height: 20,
                            ),
                            Roundetextbox(
                              child: Textfield(
                                controller: contentText,
                                lines: 9,
                              ),
                              height: 200,
                            ),
                            SizedBox(
                              height: 60,
                            ),
                            Center(child: Roundedbutton(text: 'إرسال'))
                          ],
                        ),
                      ),
                    ),
                  ],
                ))));
  }
}
