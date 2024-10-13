import 'package:flutter/material.dart';
import 'package:rowadapp/core/View/Screens/ContactInformation.dart';
import 'package:rowadapp/core/View/Screens/RegistrationGuardian.dart';
import 'package:rowadapp/core/View/Screens/RegistrationInfo.dart';
import 'package:rowadapp/core/View/Screens/StudyInformation.dart';
import 'package:rowadapp/core/View/Screens/TellAboutYourselfScreen.dart';

class StepperDemo extends StatefulWidget {
  @override
  _StepperDemoState createState() => _StepperDemoState();
}

class _StepperDemoState extends State<StepperDemo> {
  int _currentStep = 0;

  // استخدم List لتحديد الصفحات التي سيتم التنقل بينها
  List<Widget> getPages() {
    return [
      Registrationinfo(),
      Registrationguardian(),
      Studyinformation(),
      Contactinformation(),
      TellAboutYourselfScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height; // الحصول على ارتفاع الشاشة
    final steps = getPages();

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Stepper بدون شريط التنقل'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                height: screenHeight * 0.7, // نسبة المحتوى المعروض
                child: steps[_currentStep], // عرض الصفحة الحالية فقط
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (_currentStep > 0)
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _currentStep -= 1;
                        });
                      },
                      child: Text('السابق'),
                    ),
                  ElevatedButton(
                    onPressed: () {
                      if (_currentStep < steps.length - 1) {
                        setState(() {
                          _currentStep += 1;
                        });
                      } else {
                        print('تم الانتهاء من التسجيل');
                      }
                    },
                    child: Text(_currentStep == steps.length - 1 ? 'إنهاء' : 'التالي'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() => runApp(MaterialApp(
      home: StepperDemo(),
    ));
