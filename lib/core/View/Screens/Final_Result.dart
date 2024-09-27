import 'package:flutter/material.dart';
import 'package:rowadapp/core/DB/data.dart';
import 'package:rowadapp/core/View/Widgets/WidgetSemester.dart';

class Finalresult extends StatelessWidget {
  Finalresult({super.key});
  int selectedTerm = 2;
  @override
  Widget build(BuildContext context) {
    return WidgetSemester(
      finalValue: semesterevaluation['finalValue'],
      semesterResult: semesterevaluation['semesterResult'],
      ResidualResult: semesterevaluation['ResidualResult'],
      programName: semesterevaluation['programName'],
      programValue: semesterevaluation['programValue'],
      selectedTerm: selectedTerm,
    );
  }
}
