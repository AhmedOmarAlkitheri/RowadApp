import 'package:flutter/material.dart';
import 'package:rowadapp/core/View/Screens/SlidersScreen.dart';
import 'package:rowadapp/core/model/compliant.dart';
import 'package:rowadapp/core/View/Screens/ContactInformation.dart';
import 'package:rowadapp/core/View/Screens/EvaluationScreen.dart';
import 'package:rowadapp/core/View/Screens/Final_Result.dart';
import 'package:rowadapp/core/View/Screens/First_Term_Evaluation.dart';
import 'package:rowadapp/core/View/Screens/HomeScreen.dart';
import 'package:rowadapp/core/View/Screens/Login.dart';
import 'package:rowadapp/core/View/Screens/NotificationScreen.dart';
import 'package:rowadapp/core/View/Screens/Profile.dart';
import 'package:rowadapp/core/View/Screens/RegistrationFinash.dart';
import 'package:rowadapp/core/View/Screens/RegistrationGuardian.dart';
import 'package:rowadapp/core/View/Screens/RegistrationInfo.dart';
import 'package:rowadapp/core/View/Screens/Second_Term_Evaluation.dart';
import 'package:rowadapp/core/View/Screens/SplashScreen.dart';
import 'package:rowadapp/core/View/Screens/StudyInformation.dart';
import 'package:rowadapp/core/View/Screens/TellAboutYourselfScreen.dart';
import 'package:rowadapp/core/View/Screens/compliants/AllComplaints.dart';
import 'package:rowadapp/core/View/Screens/compliants/addCompliant_screen.dart';
import 'package:rowadapp/core/View/Screens/compliants/viewCompliantDetails.dart';
import 'package:rowadapp/core/View/Screens/house_screen.dart';
import 'package:rowadapp/core/View/Screens/registrationScreen.dart';

class RouteManager {
  static Route<dynamic>? generateRoute(RouteSettings setting) {
    switch (setting.name) {
      case "/Login":
        return MaterialPageRoute(builder: (ctx) => Login());
      case "/Registrationscreen":
        return MaterialPageRoute(builder: (ctx) {
          return const Registrationscreen();
        });
      case "/Registrationinfo":
        return MaterialPageRoute(builder: (ctx) {
          return Registrationinfo();
        });
      case "/Registrationguardian":
        return MaterialPageRoute(builder: (ctx) {
          return Registrationguardian();
        });
      case "/Contactinformation":
        return MaterialPageRoute(builder: (ctx) {
          return Contactinformation();
        });
      case "/Studyinformation":
        return MaterialPageRoute(builder: (ctx) {
          return Studyinformation();
        });
      case "/TellAboutYourselfScreen":
        return MaterialPageRoute(builder: (ctx) {
          return TellAboutYourselfScreen();
        });

      case "/RegistrationFinash":
        return MaterialPageRoute(builder: (ctx) {
          return const RegistrationFinash();
        });

      case "/FirstTerm":
        return MaterialPageRoute(builder: (ctx) {
          return FirstTermEvaluation();
        });

      case "/SecondTerm":
        return MaterialPageRoute(builder: (ctx) => SecondTermEvaluation());
      case "/FinalResult":
        return MaterialPageRoute(builder: (ctx) => Finalresult());
      case "/Evaluationscreen":
        return MaterialPageRoute(builder: (ctx) => Evaluationscreen());
      case "/Homescreen":
        return MaterialPageRoute(builder: (ctx) => Homescreen());
      case "/Notificationscreen":
        return MaterialPageRoute(builder: (ctx) => Notificationscreen());

      case "/Slider":
        return MaterialPageRoute(builder: (ctx) => Slidersscreen());
      case "/Profile":
        return MaterialPageRoute(builder: (ctx) => Profile());
      case "/splash":
        return MaterialPageRoute(builder: (ctx) {
          return Splashscreen();
        });
      case '/housing':
        return MaterialPageRoute(
          builder: (ctx) => const HouseScreen(),
        );
      case '/Laoding':
        return MaterialPageRoute(
          builder: (ctx) => const HouseScreen(),
        );
      case '/allCompliants':
        return MaterialPageRoute(
          builder: (ctx) => Allcomplaints_screen(),
        );
      case '/sendCompliant':
        return MaterialPageRoute(builder: (ctx) => AddcompliantScreen());
      case '/viewCompliant':
        Compliant C = setting.arguments as Compliant;
        return MaterialPageRoute(
            builder: (ctx) => Viewcompliantdetails(
                  c: C,
                ));
    }
    return null;
  }
}
