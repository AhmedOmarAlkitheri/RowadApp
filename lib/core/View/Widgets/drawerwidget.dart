import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rowadapp/core/View/Widgets/ButtonDrawer.dart';
import 'package:rowadapp/core/View/Widgets/Space.dart';
import 'package:rowadapp/global/components/BottomSheet.dart';
import 'package:rowadapp/global/constraints/app_color.dart';
import 'package:rowadapp/global/theme/theme.dart';
import 'package:rowadapp/helpers/Getstorage_helper.dart';

void showTopSheet(BuildContext context) {
  Getstorage_helper getstorage_helper = Getstorage_helper.instance;
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (context) {
      return Consumer<BottomSheetMenu>(
        builder: (context, provider, child) {
          return Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.35,
                decoration: const BoxDecoration(
                  color: Color(AppColor.secondaryTwoColor),
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(20),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "مركز رواد المستقبل",
                                style: TextStyle(
                                  color: Color(AppColor.primaryColor),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: const Icon(Icons.close,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              buildIconButton(
                                icon: provider.selectedItem == 0
                                    ? Icons.manage_accounts_rounded
                                    : Icons.manage_accounts_rounded,
                                color: provider.selectedItem == 0
                                    ? Colors.grey.shade200
                                    : const Color(AppColor.primaryColor),
                                "الملف الشخصي",
                                onTap: () {
                                  Navigator.pushNamedAndRemoveUntil(
                                      context, "/Profile", (route) => false);
                                  provider.toggleSelectedItem();
                                },
                              ),
                              Consumer<ThemeModes>(
                                  builder: (context, thememode, child) {
                                bool isLightMode = bool.parse(
                                    getstorage_helper.readFrmFile("mode"));

                                return buildIconButton(
                                  icon: provider.selectedItem1 == 0
                                      ? Icons.light_mode
                                      : Icons.mode_night_rounded,
                                  color: provider.selectedItem1 == 0
                                      ? Colors.grey.shade200
                                      : const Color(AppColor.primaryColor),
                                  "الوضع",
                                  onTap: () {
                                    provider.toggleSelectedItem1();
                                    thememode.goToTheme(!isLightMode);
                                  },
                                );
                              }),
                              buildIconButton(
                                icon: provider.selectedItem2 == 0
                                    ? Icons.exit_to_app_rounded
                                    : Icons.exit_to_app_rounded,
                                color: provider.selectedItem2 == 0
                                    ? Colors.grey.shade200
                                    : const Color(AppColor.primaryColor),
                                "خروج",
                                onTap: () {
                                  getstorage_helper.removeAll();
                                  Navigator.pushNamedAndRemoveUntil(
                                      context, "/splash", (route) => false);
                                  // exit(0);
                                },
                              ),
                            ],
                          ),
                          const Space(
                            height: 50,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Container(
                              width: 50,
                              height: 5,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    color: Colors.black.withOpacity(0.4), // الخلفية الداكنة
                  ),
                ),
              ),
            ],
          );
        },
      );
    },
  );
}
