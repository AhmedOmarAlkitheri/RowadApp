import 'package:flutter/material.dart';
import 'package:rowadapp/core/DB/data.dart';
import 'package:rowadapp/core/View/Widgets/WidgetSemester.dart';

class Finalresult extends StatelessWidget {
  Finalresult({super.key});
  int selectedTerm = 2;
  // semesterResult: semesterevaluation['semesterResult'],
  //   ResidualResult: semesterevaluation['ResidualResult'],
  @override
  Widget build(BuildContext context) {
    return WidgetSemester(
      semesterResult: semesterevaluation['semesterResult'],
      finalValue: semesterevaluation['finalValue'],
      programName: semesterevaluation['programName'],
      programValue: semesterevaluation['programValue'],
      selectedTerm: selectedTerm,
    );
  }
}
