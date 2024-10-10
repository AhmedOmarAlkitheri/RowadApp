import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rowadapp/core/View/Widgets/compliant/header.dart';
import 'package:rowadapp/core/View/Widgets/compliant/list.dart';
import 'package:rowadapp/core/View_models/compliant_vm.dart';
import 'package:rowadapp/core/View_models/room_vm.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

class Allcomplaints_screen extends StatelessWidget {
  const Allcomplaints_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(
      create: (context) => CompliantVm(),
      child: Scaffold(
          floatingActionButton: FloatingActionButton(
              backgroundColor: const Color(AppColor.primaryColor),
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
                  colors: [Color(AppColor.secondaryColor), Colors.white],
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
                    event: () {},
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    // height: 534,
                    child: Consumer<CompliantVm>(
                      builder: (ctx, c, child) {
                        if (c.isLoading) {
                      return Center(child: CircularProgressIndicator());
                        }

                       if (c.error) {
                      return Center(child: Text('Error: ${c.message}'));
                           }

                          return ListView.builder(
                              itemCount: c.Compliants.length,
                              itemBuilder: (ctx, index) {
                                return InkWell(
                                  onTap: () => Navigator.pushReplacementNamed(
                                      context, '/viewCompliant',
                                      arguments: c.Compliants[index]),
                                  child: ListOf(
                                    // sendDate: c.Compliants[index].sendDate,
                                    title: c.Compliants[index].title,
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
