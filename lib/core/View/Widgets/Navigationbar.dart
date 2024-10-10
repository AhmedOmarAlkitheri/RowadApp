import 'package:flutter/material.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

class Navigationbar extends StatefulWidget {
  const Navigationbar({super.key});

  @override
  State<Navigationbar> createState() => _AppbartermsState();
}

class _AppbartermsState extends State<Navigationbar> {
  int _selectedTerm = 0;

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
              // spreadRadius: 2,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        height: 50,
        width: MediaQuery.of(context).size.width - 20,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedTerm = 0;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: _selectedTerm == 0
                          ? Colors.black.withOpacity(0.25)
                          : Colors.transparent,
                      blurRadius: 3,
                      // spreadRadius: 2,
                      offset: const Offset(0, 4),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(15),
                  color: _selectedTerm == 0
                      ? const Color(AppColor.primaryColor)
                      : Colors.transparent,
                ),
                alignment: Alignment.center,
                height: 40,
                width: 60,
                child: Icon(
                  Icons.home,
                  color: _selectedTerm == 0 ? Colors.white : Colors.black,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedTerm = 1;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: _selectedTerm == 1
                          ? Colors.black.withOpacity(0.25)
                          : Colors.transparent,
                      blurRadius: 3,
                      // spreadRadius: 2,
                      offset: const Offset(0, 4),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(15),
                  color: _selectedTerm == 1
                      ? const Color(AppColor.primaryColor)
                      : Colors.transparent,
                ),
                alignment: Alignment.center,
                height: 40,
                width: 60, //(MediaQuery.of(context).size.width - 20) / 4,
                child: Icon(
                  Icons.notifications,
                  color: _selectedTerm == 1 ? Colors.white : Colors.black,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedTerm = 2;
                });
              },
              child: Container(
                alignment: Alignment.center,
                height: 40,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: _selectedTerm == 2
                          ? Colors.black.withOpacity(0.25)
                          : Colors.transparent,
                      blurRadius: 3,
                      // spreadRadius: 2,
                      offset: const Offset(0, 4),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(15),
                  color: _selectedTerm == 2
                      ? const Color(AppColor.primaryColor)
                      : Colors.transparent,
                ),
                width: 60,
                child: Icon(
                  Icons.assignment,
                  color: _selectedTerm == 2 ? Colors.white : Colors.black,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedTerm = 3;
                });
              },
              child: Container(
                alignment: Alignment.center,
                height: 40,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: _selectedTerm == 3
                          ? Colors.black.withOpacity(0.25)
                          : Colors.transparent,
                      blurRadius: 3,
                      // spreadRadius: 2,
                      offset: const Offset(0, 4),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(15),
                  color: _selectedTerm == 3
                      ? const Color(AppColor.primaryColor)
                      : Colors.transparent,
                ),
                width: 60,
                child: Icon(
                  Icons.home_work_sharp,
                  color: _selectedTerm == 3 ? Colors.white : Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
