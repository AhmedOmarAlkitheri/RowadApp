import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rowadapp/core/DB/data.dart';
import 'package:rowadapp/core/View/Widgets/Shimmer/ContainerEval.dart';
import 'package:rowadapp/core/View/Widgets/WidgetSemester.dart';
import 'package:rowadapp/core/ViewModel/EvaluationVM.dart';
import 'package:rowadapp/global/components/Skeletonizer.dart';

class Finalresult extends StatelessWidget {
  Finalresult({super.key});
  int selectedTerm = 2;
  List<String> programnames = [];
  @override
  Widget build(BuildContext context) {
    programnames.addAll(programs + programName);
    return SafeArea(
      child: Scaffold(
          body: Consumer<Evaluationvm>(builder: (context, evaluationvm, child) {
       if (evaluationvm.sumvalues.isEmpty && evaluationvm.yearResultTotal == null) {
         return const Center(child: Text('لا توجد بيانات متاحة.'));
        }
             if (evaluationvm.isLoading ) {
          return Containereval(selectedTerm: selectedTerm);
        }
        return WidgetSemester(
          finalValue: evaluationvm.yearResultTotal,
          programName: programnames,
          programValue: evaluationvm.sumvalues,
          selectedTerm: selectedTerm,
        );
      })),
    );
  }
}
