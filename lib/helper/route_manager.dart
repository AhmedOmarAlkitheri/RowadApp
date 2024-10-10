import 'package:flutter/material.dart';
import 'package:rowadapp/core/Models/compliant.dart';
import 'package:rowadapp/core/View/Screens/compliants/AllComplaints.dart';
import 'package:rowadapp/core/View/Screens/compliants/addCompliant_screen.dart';
import 'package:rowadapp/core/View/Screens/compliants/viewCompliantDetails.dart';
import 'package:rowadapp/core/View/Screens/house_screen.dart';

class RouteManager {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/housing':
        return MaterialPageRoute(
          builder: (ctx) => const HouseScreen(),
        );
      case '/allCompliants':
        return MaterialPageRoute(
          builder: (ctx) => const Allcomplaints_screen(),
        );
      case '/sendCompliant':
        return MaterialPageRoute(builder: (ctx) => AddcompliantScreen());
      case '/viewCompliant':
        Compliant C = settings.arguments as Compliant;
        return MaterialPageRoute(
            builder: (ctx) => Viewcompliantdetails(
                  c: C,
                ));
                
                default: return MaterialPageRoute(
          builder: (ctx) => const HouseScreen(),
        );
    }
  
  }
}
