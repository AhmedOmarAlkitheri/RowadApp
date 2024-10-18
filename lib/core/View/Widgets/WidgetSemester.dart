import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rowadapp/core/View/Widgets/AppBarTerms.dart';
import 'package:rowadapp/core/View/Widgets/ContainerEvaluation.dart';
import 'package:rowadapp/core/View/Widgets/Navigationbar.dart';
import 'package:rowadapp/core/ViewModel/EvaluationVM.dart';
import 'package:rowadapp/global/components/Skeletonizer.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

import '../../../global/theme/AppColor/appColor_LightMode.dart';

class WidgetSemester extends StatelessWidget {
  const WidgetSemester(
      {super.key,
      required this.finalValue,
      required this.programName,
      required this.programValue,
      required this.selectedTerm,
      this.dropdownmenu});

  //  required this.ResidualResult,
  final double? finalValue;
  final Widget? dropdownmenu;
  final List<String> programName;
  final List<double?> programValue;
  final int selectedTerm;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.green,
      body: Container(
        decoration: const BoxDecoration(
          //   color: Colors.black,
          gradient: LinearGradient(
            colors: [Color(Appcolorlightmode.backgroundTopColor), Color(Appcolorlightmode.backgroundBottomColor)],
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
              Expanded(child: Appbarterms(selectedTerm: selectedTerm)),
              const SizedBox(
                height: 10,
              ),
              dropdownmenu ?? const Text(""),
              Expanded(
                  flex: 8,
                  child:Consumer<Evaluationvm>(builder: (context, evaluationvm, child) {
                   if (evaluationvm.errorMessage != null) {
        return Center(child: Text(evaluationvm.errorMessage!));
      }
                  
             return Skeletonizer(
        enabled: evaluationvm.isLoading,
        child:
           Containerevaluation(
                    finalValue: finalValue,
                    programName: programName,
                    programValue: programValue,
                  ));
                  })
              ),

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
