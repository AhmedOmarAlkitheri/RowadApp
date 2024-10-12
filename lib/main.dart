import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:get_storage/get_storage.dart';
import 'package:provider/provider.dart';
import 'package:rowadapp/core/View/Screens/DrawerScreen.dart';
import 'package:rowadapp/core/View/Screens/EvaluationScreen.dart';
import 'package:rowadapp/core/View/Screens/HomeScreen.dart';
import 'package:rowadapp/core/View/Screens/Login.dart';
import 'package:rowadapp/core/View/Screens/NotificationScreen.dart';
import 'package:rowadapp/core/View/Screens/Profile.dart';
import 'package:rowadapp/core/View/Screens/RegistrationFinash.dart';
import 'package:rowadapp/core/View/Screens/RegistrationInfo.dart';
import 'package:rowadapp/core/View/Screens/SplashScreen.dart';
import 'package:rowadapp/core/View/Screens/StudyInformation.dart';
import 'package:rowadapp/core/ViewModel/EvaluationVM.dart';
import 'package:rowadapp/core/ViewModel/NotificationViewModel.dart';
import 'package:rowadapp/core/ViewModel/Registration_VM.dart';
import 'package:rowadapp/global/components/BottomSheet.dart';
import 'package:rowadapp/global/components/scroll_BottomBar.dart';

import 'package:rowadapp/helpers/RouteManager.dart';

void main() async {
  //async
  await GetStorage.init();
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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => RegistrationVm()),
        ChangeNotifierProvider(create: (ctx) => scroll_BottomBar()),
        ChangeNotifierProvider(create: (ctx) => NotificationViewModel()),
        ChangeNotifierProvider(create: (ctx) => Evaluationvm()),
        ChangeNotifierProvider(create: (ctx) => BottomSheetMenu()),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          supportedLocales: localization.supportedLocales,
          localizationsDelegates: localization.localizationsDelegates,
          initialRoute: "/Homescreen",
          onGenerateRoute: (settings) => RouteManager.generateRoute(settings),
          home: Homescreen()),
    );
  }
}
