import 'package:flutter/material.dart';
import '../../../global/constraints/app_color.dart';
import '../Widgets/Navigationbar.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("مركز رواد المستقبل"),
        actions: [
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
        color: Color(AppColor.secondaryColor),
        child: Column(
          children: [
            SizedBox(
              height: 140,
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color:
                    Colors.white, // Replace with the desired background color
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () => Navigator.pop(context),
                  ),
                  Expanded(
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
                    icon: Icon(Icons.notifications),
                    onPressed: () {
                      // Handle notification actions here
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 500,),
            Navigationbar(selectedTerm: 0,),
          ],
        ),
      ),

    );
  }
}
