import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:rowadapp/core/View/Screens/RegistrationInfo.dart';
import 'package:rowadapp/helpers/RouteManager.dart';

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
        initialRoute: "/Homescreen",
        onGenerateRoute: (settings) => RouteManager.generateRoute(settings),
        home: const Registrationinfo());
  }
}
