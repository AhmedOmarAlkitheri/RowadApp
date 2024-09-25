import 'package:flutter/material.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

class Appbarterms extends StatefulWidget {
  const Appbarterms({super.key});

  @override
  State<Appbarterms> createState() => _AppbartermsState();
}

class _AppbartermsState extends State<Appbarterms> {
  int _selectedTerm = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            // BoxShadow(
            //   color: Colors.black.withOpacity(0.25),
            //   blurRadius: 10,
            //   spreadRadius: -6,
            //   offset: Offset(0, -29),
            // ),
          ],
        ),
        height: 40,
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
                  borderRadius: BorderRadius.circular(15),
                  color: _selectedTerm == 0
                      ? Color(AppColor.primaryColor)
                      : Colors.transparent,
                ),
                alignment: Alignment.center,
                height: 40,
                width: (MediaQuery.of(context).size.width - 20) / 3,
                child: Text(
                  "الفصل الأول",
                  style: TextStyle(
                    color: _selectedTerm == 0 ? Colors.white : Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
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
                  borderRadius: BorderRadius.circular(15),
                  color: _selectedTerm == 1
                      ? Color(AppColor.primaryColor)
                      : Colors.transparent,
                ),
                alignment: Alignment.center,
                height: 40,
                width: (MediaQuery.of(context).size.width - 20) / 3,
                child: Text(
                  "الفصل الثاني",
                  style: TextStyle(
                    color: _selectedTerm == 1 ? Colors.white : Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
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
                  borderRadius: BorderRadius.circular(15),
                  color: _selectedTerm == 2
                      ? Color(AppColor.primaryColor)
                      : Colors.transparent,
                ),
                width: (MediaQuery.of(context).size.width - 20) / 3,
                child: Text(
                  "النتيجة النهائية",
                  style: TextStyle(
                    color: _selectedTerm == 2 ? Colors.white : Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
