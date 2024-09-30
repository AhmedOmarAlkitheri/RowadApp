import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rowadapp/core/View/Widgets/compliant/header.dart';
import 'package:rowadapp/core/View/Widgets/compliant/list.dart';
import 'package:rowadapp/core/View_models/compliant_vm.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

class Allcomplaints_screen extends StatelessWidget {
  const Allcomplaints_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            backgroundColor: Color(AppColor.primaryColor),
            onPressed: () {},
            child: Icon(
              Icons.add,
              color: Colors.white,
            )),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [const Color(AppColor.secondaryColor), Colors.white],
                begin: AlignmentDirectional.topStart,
                end: AlignmentDirectional.bottomEnd),
          ),
          child: Container(
            margin: EdgeInsets.only(right: 10, left: 10),
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Header(title: 'صندوق الشكاوي', imagePath: 'assets/cbox.png'),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 680,
                  child: Consumer<CompliantVm>(
                    builder: (ctx, c, child) {
                      if (c.Compliants.isEmpty)
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      else
                        return ListView.builder(
                            itemCount: c.Compliants.length,
                            itemBuilder: (ctx, index) {
                              return ListOf(
                                sendDate: c.Compliants[index].sendDate,
                                title: c.Compliants[index].title,
                              );
                            });
                    },
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
