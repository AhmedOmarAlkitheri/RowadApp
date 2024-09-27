import 'package:flutter/material.dart';
import 'package:rowadapp/core/View/Screens/DrawerScreen.dart';
import 'package:rowadapp/core/View/Screens/EvaluationScreen.dart';
import 'package:rowadapp/core/View/Screens/Final_Result.dart';
import 'package:rowadapp/core/View/Screens/First_Term_Evaluation.dart';
import 'package:rowadapp/core/View/Screens/HomeScreen.dart';
import 'package:rowadapp/core/View/Screens/Login.dart';
import 'package:rowadapp/core/View/Screens/NotificationScreen.dart';
import 'package:rowadapp/core/View/Screens/PlacementScreens.dart';
import 'package:rowadapp/core/View/Screens/Profile.dart';
import 'package:rowadapp/core/View/Screens/Second_Term_Evaluation.dart';

class RouteManager {
  static Route<dynamic>? generateRoute(RouteSettings setting) {
    switch (setting.name) {
      case "/Login":
        return MaterialPageRoute(builder: (ctx) => Login());
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
      case "/Placementscreens":
        return MaterialPageRoute(builder: (ctx) => Placementscreens());

      case "/DrawerScreen":
        return MaterialPageRoute(builder: (ctx) => Drawerscreen());
      case "/Profile":
        return MaterialPageRoute(builder: (ctx) => Profile());

      default:
    }
  }
}
