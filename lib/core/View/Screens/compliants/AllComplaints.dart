import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rowadapp/core/View/Widgets/Shimmer/ListOf.dart';
import 'package:rowadapp/core/View/Widgets/compliant/header.dart';
import 'package:rowadapp/core/View/Widgets/compliant/list.dart';
import 'package:rowadapp/core/ViewModel/compliant_vm.dart';
import 'package:rowadapp/global/components/Skeletonizer.dart';

import 'package:rowadapp/global/constraints/app_color.dart';

import '../../../../global/theme/AppColor/appColor_LightMode.dart';

class Allcomplaints_screen extends StatelessWidget {
  Allcomplaints_screen({super.key});
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CompliantVm(),
      child: Scaffold(
          floatingActionButton: FloatingActionButton(
              backgroundColor: const Color(Appcolorlightmode.lightGreen),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/sendCompliant');
              },
              child: const Icon(
                Icons.add,
                color: Colors.white,
              )),
          floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
          body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(Appcolorlightmode.backgroundTopColor), Color(Appcolorlightmode.backgroundBottomColor)],
                  begin: AlignmentDirectional.topStart,
                  end: AlignmentDirectional.bottomEnd),
            ),
            child: Container(
              margin: const EdgeInsets.only(right: 10, left: 10),
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Header(
                    title: 'صندوق الشكاوي',
                    imagePath: 'assets/cbox.png',
                    event: () {
                      Navigator.pushNamed(context, '/housing');
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                  
                    child: Consumer<CompliantVm>(
                      builder: (ctx, c, child) {
                        if (c.isLoading) {
                          return ListOfShimmer();
                        }

                        if (c.error) {
                          return Center(child: Text('Error: ${c.message}'));
                        }

                        return ListView.builder(
                            itemCount: c.Compliants.length,
                            itemBuilder: (ctx, index) {
                           int reversedIndex = c.Compliants.length - 1 - index;
                              return InkWell(
                                onTap: () => Navigator.pushReplacementNamed(
                                    context, '/viewCompliant',
                                    arguments: c.Compliants[reversedIndex]),
                                child: ListOf(
                                  // sendDate: c.Compliants[index].sendDate,
                                  title: c.Compliants[reversedIndex].title,
                                ),
                              );
                            });
                      },
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
