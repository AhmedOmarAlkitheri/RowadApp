import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rowadapp/core/View/Widgets/Navigationbar.dart';
import 'package:rowadapp/core/View/Widgets/Shimmer/shimmerHouse.dart';
import 'package:rowadapp/core/View/Widgets/houseWidgets/container_button.dart';
import 'package:rowadapp/core/View/Widgets/houseWidgets/icon_container.dart';
import 'package:rowadapp/core/ViewModel/room_vm.dart';

class HouseScreen extends StatelessWidget {
  const HouseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RoomVM(),
      child: SafeArea(
        child: Scaffold(
          body: Consumer<RoomVM>(
            builder: (context, roomVM, child) {
              if (roomVM.isLoading) {
                return const ShimmerHousing();
              }

             
              
              // if (roomVM.error) {
              //   return Center(child: Text('Error: ${roomVM.errorMessage}'));
              // }
              

              final room = roomVM.room;
              return Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xffC4FFA9), Color(0xFFFFFFFF)],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 5),
                    const Text(
                      'السكن',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    const SizedBox(height: 20),
                    Expanded(
                      flex: 3,
                      child: Container(
                        padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
                        height: 230,
                        width: 353,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.25),
                              blurRadius: 4,
                              offset: const Offset(0, 4),
                            ),
                          ],
                          color: Colors.white,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Row(
                                children: [
                                  const SizedBox(width: 20),
                                  Expanded(
                                    flex: 1,
                                    child: Row(
                                      children: [
                                        const SizedBox(width: 20),
                                        Text(
                                          'زملاء الغرفة',
                                          style: TextStyle(fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Expanded(
                                    flex: 2,
                                    child: Center(
                                      child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: room?.roomMates.length ?? 0,
                                        itemBuilder: (ctx, index) => IconContainer(
                                          text: room?.roomMates[index],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Expanded(
                              flex: 1,
                              child: Row(
                                children: [
                                  SizedBox(width: 20),
                                  Text(
                                    'زملاء الغرفة',
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            Expanded(
                              flex: 2,
                              child: Center(
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: room?.roomMates.length ?? 0,
                                  itemBuilder: (ctx, index) => IconContainer(
                                    text: room?.roomMates[index],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ContainerButton(
                              onTaputton: () {
                                Navigator.pushReplacementNamed(context, '/Notificationscreen');
                              },
                              text: 'أشعارات الدفع',
                            ),
                            const SizedBox(height: 25),
                            ContainerButton(
                              onTaputton: () {
                                Navigator.pushReplacementNamed(context, '/allCompliants');
                              },
                              text: 'الشكاوي',
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Expanded(
                      child: Navigationbar(
                        selectedTerm: 3,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}