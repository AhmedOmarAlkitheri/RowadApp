import 'package:flutter/material.dart';
import 'package:rowadapp/core/Models/compliant.dart';
import 'package:rowadapp/core/View/Widgets/compliant/RoundeTextBox.dart';
import 'package:rowadapp/core/View/Widgets/compliant/header.dart';
import 'package:rowadapp/core/View/Widgets/compliant/roundedButton.dart';
import 'package:rowadapp/core/View/Widgets/compliant/textField.dart';
import 'package:rowadapp/core/View/Widgets/compliant/textTitle.dart';
import 'package:rowadapp/core/View/Widgets/compliant/whiteRoubdedBackground.dart';
import 'package:rowadapp/core/View_models/compliant_vm.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

class AddcompliantScreen extends StatelessWidget {
  AddcompliantScreen({super.key});
   TextEditingController titleText = TextEditingController();
   TextEditingController contentText = TextEditingController();
  CircularProgressIndicator? progress;
  CompliantVm cvm = CompliantVm();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(AppColor.secondaryColor), Colors.white],
                  begin: AlignmentDirectional.topStart,
                  end: AlignmentDirectional.bottomEnd),
            ),
            child: Container(
                margin: const EdgeInsets.only(right: 10, left: 10),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Header(
                      title: 'اضافة شكوى',
                      imagePath: 'assets/add_file.png',
                      event: () {
                        Navigator.pushReplacementNamed(
                            context, '/allCompliants');
                      },
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Whiteroubdedbackground(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 25,
                            ),
                            Texttitle(title: 'عنوان الشكوى'),
                            const SizedBox(
                              height: 10,
                            ),
                            Roundetextbox(
                              child: Textfield(controller: titleText),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Texttitle(title: 'محتوى الشكوى'),
                            const SizedBox(
                              height: 15,
                            ),
                            Roundetextbox(
                              height: 150,
                              child: Textfield(
                                controller: contentText,
                                lines: 9,
                              ),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            Center(
                                child: Roundedbutton(
                              text: 'إرسال',
                              event: () async{
                                Compliant c = Compliant();
                                if (contentText.text != null && titleText.text !=null) {
                                  c.title = titleText.text;
                                  c.content = contentText.text;
                                  // c.sendDate = (DateTime.now()).toString();
                                await cvm.addCompliant(c);
                                   ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(content: Text(cvm.message)));
                                  // Navigator.pushReplacementNamed(
                                  //     context, '/allCompliants');
                                }
                              },
                            ))
                          ],
                        ),
                      ),
                    ),
                  ],
                ))));
  }
}
