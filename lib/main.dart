import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:provider/provider.dart';
import 'package:rowadapp/core/View/Screens/compliants/AllComplaints.dart';
import 'package:rowadapp/core/View/Screens/compliants/addCompliant_screen.dart';
import 'package:rowadapp/core/View/Screens/compliants/viewCompliantDetails.dart';
import 'package:rowadapp/core/View/Screens/house_screen.dart';
import 'package:rowadapp/core/View/Widgets/AppBarTerms.dart';
import 'package:rowadapp/core/View/Widgets/ContainerEvaluation.dart';
import 'package:rowadapp/core/View/Widgets/Navigationbar.dart';
import 'package:rowadapp/core/View_models/compliant_vm.dart';
import 'package:rowadapp/core/View_models/room_vm.dart';
import 'package:rowadapp/global/constraints/app_color.dart';
import 'package:rowadapp/helper/route_manager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final FlutterLocalization localization = FlutterLocalization.instance;


  @override
  Widget build(BuildContext context) {
    localization.init(
      mapLocales: [
        const MapLocale('ar', {}),
      ],
      initLanguageCode: 'ar',
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      supportedLocales: localization.supportedLocales,
      localizationsDelegates: localization.localizationsDelegates,
      initialRoute:'/housing',
      onGenerateRoute: RouteManager.generateRoute,
      //  home: HouseScreen(),
    );
  }
}

