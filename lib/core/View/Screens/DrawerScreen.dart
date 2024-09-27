import 'dart:io';

import 'package:flutter/material.dart';
import 'package:rowadapp/core/View/Widgets/ButtonDrawer.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

class Drawerscreen extends StatefulWidget {
  const Drawerscreen({super.key});

  @override
  State<Drawerscreen> createState() => _DrawerscreenState();
}

int selectedItem = 0;
int selectedItem1 = 0;
int selectedItem2 = 0;

class _DrawerscreenState extends State<Drawerscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(132, 170, 169, 169),
      body: Stack(children: [
        Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "مركز رواد المستقبل",
                        style: TextStyle(
                            color: Color(AppColor.primaryColor),
                            fontWeight: FontWeight.bold),
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.close, color: Colors.black)),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildIconButton(
                        icon: selectedItem == 0
                            ? Icons.manage_accounts_rounded
                            : Icons.manage_accounts_rounded,
                        color: selectedItem == 0
                            ? Colors.grey.shade200
                            : Color(AppColor.primaryColor),
                        "الملف الشخصي",
                        onTap: () {
                          Navigator.pushNamedAndRemoveUntil(
                              context, "/Profile", (route) => false);
                          setState(() {
                            if (selectedItem == 0) {
                              selectedItem = 1;
                            } else {
                              selectedItem = 0;
                            }
                          });
                        },
                      ),
                      buildIconButton(
                        icon: selectedItem1 == 0
                            ? Icons.light_mode
                            : Icons.mode_night_rounded,
                        color: selectedItem1 == 0
                            ? Colors.grey.shade200
                            : Color(AppColor.primaryColor),
                        "الوضع",
                        onTap: () {
                          setState(() {
                            if (selectedItem1 == 0) {
                              selectedItem1 = 1;
                            } else {
                              selectedItem1 = 0;
                            }
                          });
                        },
                      ),

                      buildIconButton(
                        icon: selectedItem2 == 0
                            ? Icons.exit_to_app_rounded
                            : Icons.exit_to_app_rounded,
                        color: selectedItem2 == 0
                            ? Colors.grey.shade200
                            : Color(AppColor.primaryColor),
                        "خروج",
                        onTap: () {
                          setState(() {
                            if (selectedItem2 == 0) {
                              selectedItem2 = 1;
                            } else {
                              selectedItem2 = 0;
                            }
                          });
                          exit(0);
                        },
                      ),

                      // buildIconButton(Icons.person_outline, "", hasDot: true),
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 50,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              ),
            ))
      ]),
    );
  }
}
