import 'package:flutter/material.dart';
import 'package:rowadapp/core/View/Widgets/AppBarTerms.dart';
import 'package:rowadapp/core/View/Widgets/ContainerEvaluation.dart';
import 'package:rowadapp/core/View/Widgets/Navigationbar.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

class WidgetSemester extends StatefulWidget {
  const WidgetSemester(
      {super.key,
      required this.finalValue,
      required this.semesterResult,
      required this.ResidualResult,
      required this.programName,
      required this.programValue,
      required this.selectedTerm});

  final double finalValue;
  final String semesterResult, ResidualResult;
  final List<String> programName;
  final List<double> programValue;
  final int selectedTerm;
  @override
  State<WidgetSemester> createState() => _WidgetSemesterState();
}

class _WidgetSemesterState extends State<WidgetSemester> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.green,
      body: Container(
        decoration: const BoxDecoration(
          //   color: Colors.black,
          gradient: LinearGradient(
            colors: [Color(AppColor.secondaryColor), Colors.white],
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomStart,
          ),
        ),
        child: Container(
          margin: const EdgeInsets.only(right: 10, left: 10),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Expanded(child: Appbarterms(selectedTerm: widget.selectedTerm)),
              const SizedBox(
                height: 15,
              ),
              Expanded(
                  flex: 8,
                  child: Containerevaluation(
                      finalValue: widget.finalValue,
                      semesterResult: widget.semesterResult,
                      ResidualResult: widget.ResidualResult,
                      programName: widget.programName,
                      programValue: widget.programValue)),
              const SizedBox(
                height: 15,
              ),
              const Expanded(
                  child: Navigationbar(
                selectedTerm: 2,
              )),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
