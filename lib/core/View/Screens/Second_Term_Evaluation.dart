import 'package:flutter/material.dart';
import 'package:rowadapp/core/DB/data.dart';
import 'package:rowadapp/core/View/Widgets/WidgetSemester.dart';

class SecondTermEvaluation extends StatelessWidget {
  SecondTermEvaluation({super.key});
  int selectedTerm = 1;

  @override
  Widget build(BuildContext context) {
    return WidgetSemester(
      semesterResult: semesterevaluation1['semesterResult'],
      finalValue: semesterevaluation1['finalValue'],
      programName: semesterevaluation1['programName'],
      programValue: semesterevaluation1['programValue'],
      selectedTerm: selectedTerm,
    );
  }
}
