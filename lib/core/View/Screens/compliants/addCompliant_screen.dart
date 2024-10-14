import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rowadapp/core/model/compliant.dart';
import 'package:rowadapp/core/View/Widgets/compliant/RoundeTextBox.dart';
import 'package:rowadapp/core/View/Widgets/compliant/header.dart';
import 'package:rowadapp/core/View/Widgets/compliant/roundedButton.dart';
import 'package:rowadapp/core/View/Widgets/compliant/textField.dart';
import 'package:rowadapp/core/View/Widgets/compliant/textTitle.dart';
import 'package:rowadapp/core/View/Widgets/compliant/whiteRoubdedBackground.dart';
import 'package:rowadapp/core/ViewModel/compliant_vm.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

class AddcompliantScreen extends StatelessWidget {
  AddcompliantScreen({super.key});
  TextEditingController titleText = TextEditingController();
  TextEditingController contentText = TextEditingController();
  CircularProgressIndicator? progress;
  CompliantVm cvm = CompliantVm();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CompliantVm(),
      child: Scaffold(
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
                        imagePath: 'assets/images/paper(1).png',
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
                          child: Form(
                            key: _formKey,
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
                                Consumer<CompliantVm>(
                                  builder: (ctx, c, child) => Center(
                                    child: Roundedbutton(
                                      isLoading: c.isLoading,
                                      text: 'إرسال',
                                      event: () async {
                                        if (_formKey.currentState!.validate()) {
                                          
                                          Compliant compliant = Compliant();
                                          compliant.title = titleText.text;
                                          compliant.content = contentText.text;
                                
                                          await c.addCompliant(compliant); 
                                
                                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                            content: Text(c.message),
                                          ));
                                        } else {
                                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                            content: Text('يرجى ملء الحقول المطلوبة'),
                                          ));
                                        }
                                      },
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )))),
    );
  }
}
