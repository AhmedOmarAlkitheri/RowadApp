import 'package:flutter/material.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

class Appbarterms extends StatefulWidget {
  const Appbarterms({super.key, required this.selectedTerm});
  final int selectedTerm;
  @override
  State<Appbarterms> createState() => _AppbartermsState();
}

class _AppbartermsState extends State<Appbarterms> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: const [
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
                //  setState(() {

                // });
                Navigator.pushNamedAndRemoveUntil(
                    context, "/FirstTerm", (route) => false);
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: widget.selectedTerm == 0
                      ? const Color(AppColor.primaryColor)
                      : Colors.transparent,
                ),
                alignment: Alignment.center,
                height: 40,
                width: (MediaQuery.of(context).size.width - 20) / 3,
                child: Text(
                  "الشهري",
                  style: TextStyle(
                    color:
                        widget.selectedTerm == 0 ? Colors.white : Colors.black,
                         fontFamily: 'vazir-light',
                    // fontWeight: FontWeight.bold,
                     fontSize: 15
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                //  setState(() {

                //   });
                Navigator.pushNamedAndRemoveUntil(
                    context, "/SecondTerm", (route) => false);
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: widget.selectedTerm == 1
                      ? const Color(AppColor.primaryColor)
                      : Colors.transparent,
                ),
                alignment: Alignment.center,
                height: 40,
                width: (MediaQuery.of(context).size.width - 20) / 3,
                child: Text(
                  "الفصلي",
                  style: TextStyle(
                      color: widget.selectedTerm == 1
                          ? Colors.white
                          : Colors.black,
                           fontFamily: 'vazir-light',
                      // fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, "/FinalResult", (route) => false);
              },
              child: Container(
                alignment: Alignment.center,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: widget.selectedTerm == 2
                      ? const Color(AppColor.primaryColor)
                      : Colors.transparent,
                ),
                width: (MediaQuery.of(context).size.width - 20) / 3,
                child: Text(
                  "النتيجة النهائية",
                  style: TextStyle(
                    color:
                        widget.selectedTerm == 2 ? Colors.white : Colors.black,
                         fontFamily: 'vazir-light',
                    // fontWeight: FontWeight.bold,
                     fontSize: 15
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
