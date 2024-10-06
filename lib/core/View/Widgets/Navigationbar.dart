import 'package:flutter/material.dart';
import 'package:rowadapp/core/View/Widgets/buildNavBarItem.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

class Navigationbar extends StatefulWidget {
  const Navigationbar({super.key, required this.selectedTerm});
  final int selectedTerm;

  @override
  State<Navigationbar> createState() => _NavigationbarState();
}

class _NavigationbarState extends State<Navigationbar> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              blurRadius: 3,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        height: 50,
        width: MediaQuery.of(context).size.width - 20,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildNavBarItem(
              icon: Icons.home,
              isSelected: widget.selectedTerm == 0,
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, "/Homescreen", (route) => false);
              },
            ),
            buildNavBarItem(
              icon: Icons.notifications,
              isSelected: widget.selectedTerm == 1,
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, "/Notificationscreen", (route) => false);
              },
            ),
            buildNavBarItem(
              icon: Icons.assignment,
              isSelected: widget.selectedTerm == 2,
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, "/Evaluationscreen", (route) => false);
              },
            ),
            buildNavBarItem(
              icon: Icons.home_work_sharp,
              isSelected: widget.selectedTerm == 3,
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, "/Placementscreens", (route) => false);
              },
            ),
          ],
        ),
      ),
    );
  }
}
// class Navigationbar extends StatefulWidget {
//   const Navigationbar({super.key, required this.selectedTerm});
//   final int selectedTerm;
//   @override
//   State<Navigationbar> createState() => _AppbartermsState();
// }

// class _AppbartermsState extends State<Navigationbar> {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           color: Colors.white,
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(0.25),
//               blurRadius: 3,
//               // spreadRadius: 2,
//               offset: const Offset(0, 4),
//             ),
//           ],
//         ),
//         height: 50,
//         width: MediaQuery.of(context).size.width - 20,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             GestureDetector(
//               onTap: () {
//                 Navigator.pushNamedAndRemoveUntil(
//                     context, "/Homescreen", (route) => false);
//               },
//               child: Container(
//                 decoration: BoxDecoration(
//                   boxShadow: [
//                     BoxShadow(
//                       color: widget.selectedTerm == 0
//                           ? Colors.black.withOpacity(0.25)
//                           : Colors.transparent,
//                       blurRadius: 3,
//                       // spreadRadius: 2,
//                       offset: const Offset(0, 4),
//                     ),
//                   ],
//                   borderRadius: BorderRadius.circular(15),
//                   color: widget.selectedTerm == 0
//                       ? const Color(AppColor.primaryColor)
//                       : Colors.transparent,
//                 ),
//                 alignment: Alignment.center,
//                 height: 40,
//                 width: 60,
//                 child: Icon(
//                   Icons.home,
//                   color: widget.selectedTerm == 0 ? Colors.white : Colors.black,
//                 ),
//               ),
//             ),
//             GestureDetector(
//               onTap: () {
//                 Navigator.pushNamedAndRemoveUntil(
//                     context, "/Notificationscreen", (route) => false);
//               },
//               child: Container(
//                 decoration: BoxDecoration(
//                   boxShadow: [
//                     BoxShadow(
//                       color: widget.selectedTerm == 1
//                           ? Colors.black.withOpacity(0.25)
//                           : Colors.transparent,
//                       blurRadius: 3,
//                       // spreadRadius: 2,
//                       offset: const Offset(0, 4),
//                     ),
//                   ],
//                   borderRadius: BorderRadius.circular(15),
//                   color: widget.selectedTerm == 1
//                       ? const Color(AppColor.primaryColor)
//                       : Colors.transparent,
//                 ),
//                 alignment: Alignment.center,
//                 height: 40,
//                 width:
//                     60, //(MediaQuery.of(context).size.width - 20) / 4,  notif-outlined
//                 child:
//                     //  Container(height: 20,width: 30,decoration: BoxDecoration(color: widget.selectedTerm == 1 ? Colors.white : Colors.black,image: DecorationImage(image: AssetImage("assets/images/notif-outlined" ),fit: BoxFit.fill)),),
//                     Icon(
//                   Icons.notifications,
//                   color: widget.selectedTerm == 1 ? Colors.white : Colors.black,
//                 ),
//               ),
//             ),
//             GestureDetector(
//               onTap: () {
//                 Navigator.pushNamedAndRemoveUntil(
//                     context, "/Evaluationscreen", (route) => false);
//               },
//               child: Container(
//                 alignment: Alignment.center,
//                 height: 40,
//                 decoration: BoxDecoration(
//                   boxShadow: [
//                     BoxShadow(
//                       color: widget.selectedTerm == 2
//                           ? Colors.black.withOpacity(0.25)
//                           : Colors.transparent,
//                       blurRadius: 3,
//                       // spreadRadius: 2,
//                       offset: const Offset(0, 4),
//                     ),
//                   ],
//                   borderRadius: BorderRadius.circular(15),
//                   color: widget.selectedTerm == 2
//                       ? const Color(AppColor.primaryColor)
//                       : Colors.transparent,
//                 ),
//                 width: 60,
//                 child: Icon(
//                   Icons.assignment,
//                   color: widget.selectedTerm == 2 ? Colors.white : Colors.black,
//                 ),
//               ),
//             ),
//             GestureDetector(
//               onTap: () {
//                 Navigator.pushNamedAndRemoveUntil(
//                     context, "/Placementscreens", (route) => false);
//               },
//               child: Container(
//                 alignment: Alignment.center,
//                 height: 40,
//                 decoration: BoxDecoration(
//                   boxShadow: [
//                     BoxShadow(
//                       color: widget.selectedTerm == 3
//                           ? Colors.black.withOpacity(0.25)
//                           : Colors.transparent,
//                       blurRadius: 3,
//                       // spreadRadius: 2,
//                       offset: const Offset(0, 4),
//                     ),
//                   ],
//                   borderRadius: BorderRadius.circular(15),
//                   color: widget.selectedTerm == 3
//                       ? const Color(AppColor.primaryColor)
//                       : Colors.transparent,
//                 ),
//                 width: 60,
//                 child: Icon(
//                   Icons.home_work_sharp,
//                   color: widget.selectedTerm == 3 ? Colors.white : Colors.black,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
