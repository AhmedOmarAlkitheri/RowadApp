import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:provider/provider.dart';
import 'package:rowadapp/core/View/Screens/compliants/AllComplaints.dart';
import 'package:rowadapp/core/View/Screens/compliants/addCompliant_screen.dart';
import 'package:rowadapp/core/View/Screens/compliants/viewCompliantDetails.dart';
import 'package:rowadapp/core/View/Widgets/AppBarTerms.dart';
import 'package:rowadapp/core/View/Widgets/ContainerEvaluation.dart';
import 'package:rowadapp/core/View/Widgets/Navigationbar.dart';
import 'package:rowadapp/core/View_models/compliant_vm.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CompliantVm>(create: (ctx) => CompliantVm()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        supportedLocales: localization.supportedLocales,
        localizationsDelegates: localization.localizationsDelegates,
        //   locale: Locale('ar', 'AE'), // تحديد اللغة العربية
        // localizationsDelegates: localization.localizationsDelegates
        //   [
        //   GlobalMaterialLocalizations.delegate,
        //   GlobalWidgetsLocalizations.delegate,
        // ],

        home: Allcomplaints_screen(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.green,
      body: Container(
        decoration: BoxDecoration(
          //   color: Colors.black,
          gradient: LinearGradient(
            colors: [const Color(AppColor.secondaryColor), Colors.white],
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomStart,
          ),
        ),
        child: Container(
          margin: EdgeInsets.only(right: 10, left: 10),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Expanded(child: Appbarterms()),
              SizedBox(
                height: 15,
              ),
              Expanded(flex: 8, child: Containerevaluation()),
              SizedBox(
                height: 15,
              ),
              Expanded(child: Navigationbar()),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
