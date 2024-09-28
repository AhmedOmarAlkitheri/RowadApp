import 'package:flutter/material.dart';
import 'package:rowadapp/core/View/Widgets/WidgetTextFormField.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "/DrawerScreen");
              },
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  const Icon(Icons.close, color: Colors.black),
                  Container(
                    width: 300,
                    height: 300,
                    color: Colors.orange,
                  ),
                  const Widgettextformflied(
                    hintText: "أسم المستخدم",
                    labelText: "أسم المستخدم",
                    prefixIcon: Icon(Icons.account_circle_rounded),
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.done,
                  )
                ],
              )),
        ),
      ),
    );
  }
}
