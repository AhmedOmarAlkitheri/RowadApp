import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rowadapp/core/View/Widgets/Space.dart';
import 'package:rowadapp/core/View/Widgets/containerprofile.dart';
import 'package:rowadapp/core/ViewModel/NotificationViewModel.dart';
import 'package:rowadapp/core/ViewModel/Registration_VM.dart';
import 'package:rowadapp/core/model/ApiData.dart';
import 'package:rowadapp/helpers/Getstorage_helper.dart';

import '../../../global/constraints/app_color.dart';

class Profile extends StatelessWidget {
  Profile({super.key});

  Getstorage_helper getstorage_helper = Getstorage_helper.instance;

  @override
  Widget build(BuildContext context) {
    String id = getstorage_helper.readFrmFile("id").toString();
    print(id);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Provider.of<RegistrationVm>(context, listen: false).fetchRegistration(id);
    });

    return Scaffold(
      backgroundColor: const Color(0xffD8FFC6),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        actions: [
          InkWell(
            child: const Icon(
              Icons.arrow_forward,
              size: 30,
            ),
            onTap: () {
              Navigator.pushNamed(context, "/Homescreen");
            },
          ),
          const Space(
            width: 10,
          ),
        ],
        // leading: Container(),
      ),
      body: Consumer<RegistrationVm>(builder: (context, registration, child) {
        // if (registration.isLoading) {
        //   return const Center(child: CircularProgressIndicator());
        // }

        // if (registration.errorMessage != null) {
        //   return Center(child: Text(registration.errorMessage!));
        // }

        // if (registration.profileData == null) {
        //   return const Center(child: Text('لا يوجد ملف شخصي خاص بك'));
        // }

        return Column(
          children: [
            Container(
              height: 250,
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius:
                    const BorderRadius.vertical(bottom: Radius.circular(25)),
                color: const Color(AppColor.secondaryColor),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(height: 10),

                  Container(
                    width: 140,
                    height: 140,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                '{registration.profileData?.image}' ??
                                    "assets/images/personprofile.png"),
                            fit: BoxFit.fill),
                        shape: BoxShape.circle),
                  ),

                  const SizedBox(height: 20),
                  Text(
                    '{registration.profileData?.studName}',
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),

                  // Text(
                  //   'طالب',
                  //   style: TextStyle(fontSize: 20),
                  // ),
                ],
              ),
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height - 250,
                // width: 200,
                child: SingleChildScrollView(
                  // scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Containerprofile(columnwidget: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'معلوماتك الشخصية',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'تاريخ الميلاد',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text('{registration.profileData?.dateOfBirth}'),
                              const Divider(
                                thickness: 1.5,
                              ),
                              const Text(
                                'مكان الاقامة الحالي',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                  '{registration.profileData?.currentplaceResidence}'),
                              const Divider(
                                thickness: 1.5,
                              ),
                              const Text(
                                'رقم جوال ولي الامر',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text('{registration.profileData?.guardianPhone}')
                            ],
                          ),
                        ]),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Containerprofile(columnwidget: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'معلوماتك الدراسية',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                "المرحلة الدراسية",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ), // Replace with actual academic year
                              Text('{registration.profileData?.next_grade}'),
                              const Divider(
                                thickness: 1.5,
                              ),
                              const Text(
                                "المدرسة الحالية",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ), // Replace with actual academic year
                              Text(
                                  '{registration.profileData?.favSchool}'), // Replace with actual specialization
                            ],
                          ),
                        ]),
                      ),
                    ],
                  ),
                ))
          ],
        );
      }),
    );
  }
}
