import 'package:flutter/material.dart';
import 'package:rowadapp/helpers/Getstorage_helper.dart';
import '../../../global/constraints/app_color.dart';
import '../Widgets/Navigationbar.dart';

class Homescreen extends StatelessWidget {
  Homescreen({super.key});
  Getstorage_helper getstorageHelper = Getstorage_helper.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("مركز رواد المستقبل"),
        actions: const [
          Icon(
            Icons.menu,
            size: 50,
          )
        ],
        leading: Container(),
      ),
      body:
          // width: MediaQuery.of(context).size.width,
          // height: MediaQuery.of(context).size.height,

          Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: const Color(AppColor.secondaryColor),
        child: Column(
          children: [
            const SizedBox(
              height: 140,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color:
                    Colors.white, // Replace with the desired background color
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => Navigator.pop(context),
                  ),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'بدء الفصل الدراسي الجديد',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'أهلاً بكم في الفصل الدراسي الجديد! نراكم جميعًا',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.notifications),
                    onPressed: () {
                      // Handle notification actions here
                    },
                  ),
                ],
              ),
            ),
            Text("${getstorageHelper.readFrmFile("firstName")}"),
            Text("${getstorageHelper.readFrmFile("lastName")}"),
            const Navigationbar(
              selectedTerm: 0,
            ),
          ],
        ),
      ),
    );
  }
}
