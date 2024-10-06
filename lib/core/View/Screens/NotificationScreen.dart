import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:rowadapp/core/View/Widgets/ContainerNotification.dart';
import 'package:rowadapp/core/View/Widgets/Navigationbar.dart';

import 'package:rowadapp/core/ViewModel/NotificationViewModel.dart';
import 'package:rowadapp/global/components/scroll_BottomBar.dart';
import 'package:rowadapp/global/constraints/app_color.dart';
import 'package:rowadapp/helpers/Getstorage_helper.dart';

class Notificationscreen extends StatelessWidget {
  // final String studentId;

  Notificationscreen({super.key});
  Getstorage_helper getstorage_helper = Getstorage_helper.instance;

  @override
  Widget build(BuildContext context) {
    String id = getstorage_helper.readFrmFile("id").toString();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<NotificationViewModel>(context, listen: false)
          .fetchNotifications(id);
    });

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(AppColor.thirdColor),
        title: const Row(
          children: [
            Icon(
              Icons.notifications_active,
              color: Color(AppColor.secondaryTwoColor),
            ),
            Text(
              "  الإشعارات",
              style: TextStyle(color: Color(AppColor.secondaryTwoColor)),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                NotificationListener<ScrollNotification>(
                  onNotification: (scrollNotification) {
                    final provider =
                        Provider.of<scroll_BottomBar>(context, listen: false);
                    if (scrollNotification.metrics.pixels > 100) {
                      provider.setVisibility(false);
                    } else {
                      provider.setVisibility(true);
                    }
                    return true;
                  },
                  child: Consumer<NotificationViewModel>(
                      builder: (context, viewModel, child) {
                    if (viewModel.isLoading) {
                      return const Center(child: CircularProgressIndicator());
                    }

                    if (viewModel.errorMessage != null) {
                      return Center(child: Text(viewModel.errorMessage!));
                    }

                    if (viewModel.apiResponse == null ||
                        viewModel.apiResponse!.data!.isEmpty) {
                      return const Center(child: Text('لا توجد إشعارات متاحة'));
                    }

                    return ListView.builder(
                      itemCount: viewModel.filteredNotifications!.length,
                      itemBuilder: (ctx, index) {
                        var notification =
                            viewModel.filteredNotifications![index];
                        return Containernotification(
                          title: notification.title!,
                          subtitle: notification.subtitle!,
                          date: notification.date!,
                        );
                      },
                    );
                  }),
                ),
                Consumer<scroll_BottomBar>(
                  builder: (context, provider, child) {
                    return AnimatedPositioned(
                      duration: const Duration(milliseconds: 300),
                      bottom: provider.isVisible ? 20 : -100,
                      right: 10,
                      child: const Navigationbar(selectedTerm: 1),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


// class Notificationscreen extends StatefulWidget {
//   const Notificationscreen({super.key});

//   @override
//   State<Notificationscreen> createState() => _NotificationscreenState();
// }

// class _NotificationscreenState extends State<Notificationscreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: const Color(AppColor.thirdColor),
//         title: const Row(
//           children: [
//             Icon(
//               Icons.notifications_active,
//               color: Color(AppColor.secondaryTwoColor),
//             ),
//             Text(
//               "  الاشعارات",
//               style: TextStyle(color: Color(AppColor.secondaryTwoColor)),
//             ),
//           ],
//         ),
//       ),
//       body: Column(
//         children: [
//           // Row الخاص بـ Typenotification
//           Container(
//             decoration: const BoxDecoration(
//               boxShadow: [
//                 BoxShadow(
//                     color: Colors.grey, offset: Offset(0, 5), blurRadius: 4),
//               ],
//               color: Color(AppColor.secondaryTwoColor),
//             ),
//             height: 60,
//             width: MediaQuery.of(context).size.width,
//             child: const SingleChildScrollView(
//               // إضافة SingleChildScrollView
//               scrollDirection: Axis.horizontal,
//               child: Row(
//                 children: [
//                   Space(width: 10),
//                   Icon(Icons.notification_add_sharp),
//                   Text(" نوع الاشعار"),
//                   SizedBox(width: 10),
//                   Typenotification(
//                     type: "تغذية",
//                     color: AppColor.primaryColor,
//                     radius: 10,
//                   ),
//                   Typenotification(
//                     type: "تسكين أولي",
//                     color: AppColor.twoNotification,
//                     radius: 10,
//                   ),
//                   Typenotification(
//                     type: "تسكين سنوي",
//                     color: AppColor.thereNotification,
//                     radius: 10,
//                   ),
//                   Typenotification(
//                     type: "اخرى",
//                     color: AppColor.fourNotification,
//                     radius: 10,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           // قائمة الإشعارات
//           Expanded(
//             child: Stack(children: [
//               ListView.builder(
//                 itemCount: datanotification.length,
//                 itemBuilder: (ctx, index) {
//                   return Containernotification(
//                     title: datanotification[index]["title"]!,
//                     subtitle: datanotification[index]["subtitle"]!,
//                     typeNotification: datanotification[index]["type"]!,
//                   );
//                 },
//               ),
//               const Positioned(
//                 bottom: 20,
//                 right: 10,
//                 child: Navigationbar(selectedTerm: 1),
//               ),
//             ]),
//           ),
//         ],
//       ),
//     );
//   }
// }
