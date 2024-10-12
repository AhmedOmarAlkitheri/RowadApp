import 'package:flutter/material.dart';
import 'package:rowadapp/core/View/Screens/ContactInformation.dart';
import 'package:rowadapp/core/View/Screens/DrawerScreen.dart';
import 'package:rowadapp/core/View/Screens/EvaluationScreen.dart';
import 'package:rowadapp/core/View/Screens/Final_Result.dart';
import 'package:rowadapp/core/View/Screens/First_Term_Evaluation.dart';
import 'package:rowadapp/core/View/Screens/HomeScreen.dart';
import 'package:rowadapp/core/View/Screens/Login.dart';
import 'package:rowadapp/core/View/Screens/NotificationScreen.dart';
import 'package:rowadapp/core/View/Screens/PlacementScreens.dart';
import 'package:rowadapp/core/View/Screens/Profile.dart';
import 'package:rowadapp/core/View/Screens/RegistrationFinash.dart';
import 'package:rowadapp/core/View/Screens/RegistrationGuardian.dart';
import 'package:rowadapp/core/View/Screens/RegistrationInfo.dart';
import 'package:rowadapp/core/View/Screens/Second_Term_Evaluation.dart';
import 'package:rowadapp/core/View/Screens/SplashScreen.dart';
import 'package:rowadapp/core/View/Screens/StudyInformation.dart';
import 'package:rowadapp/core/View/Screens/TellAboutYourselfScreen.dart';
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
        return MaterialPageRoute(builder: (ctx) =>  Evaluationscreen());
      case "/Homescreen":
        return MaterialPageRoute(builder: (ctx) => Homescreen());
      case "/Notificationscreen":
        return MaterialPageRoute(builder: (ctx) => Notificationscreen());
      case "/Placementscreens":
        return MaterialPageRoute(builder: (ctx) => const Placementscreens());

      // case "/DrawerScreen":
      //   return MaterialPageRoute(builder: (ctx) => const Drawerscreen());
      case "/Profile":
        return MaterialPageRoute(builder: (ctx) => Profile());
  case "/splash":
        return MaterialPageRoute(builder: (ctx) {
          return Splashscreen();
        });
      default:
    }
    return null;
  }
}
