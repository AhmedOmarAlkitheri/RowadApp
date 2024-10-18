import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rowadapp/core/DB/data.dart';
import 'package:rowadapp/core/View/Widgets/Shimmer/ContainerEval.dart';
import 'package:rowadapp/core/View/Widgets/Shimmer/evalcontainershimmmer.dart';
import 'package:rowadapp/core/View/Widgets/Space.dart';
import 'package:rowadapp/core/View/Widgets/WidgetSemester.dart';
import 'package:rowadapp/core/ViewModel/EvaluationVM.dart';
import 'package:rowadapp/core/ViewModel/NotificationViewModel.dart';
import 'package:rowadapp/global/components/Skeletonizer.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

import '../../../global/theme/AppColor/appColor_LightMode.dart';

class SecondTermEvaluation extends StatelessWidget {
  SecondTermEvaluation({super.key});

  int selectedTerm = 1;
  // bool selectterm = true;
  // String term = "الفصل الاول";
  List<double?> programvalue = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Consumer<Evaluationvm>(builder: (context, evaluationvm, child) {
      print(evaluationvm.programs);
      //   programvalue =  evaluationvm.programs!.sublist(0, evaluationvm.programs!.length - 1) .map((program) => program.sem1).toList();
      if (evaluationvm.errorMessage != null) {
        return Center(child: Text(evaluationvm.errorMessage!));
      }
      if (evaluationvm.isLoading) {
        return Containereval(selectedTerm: selectedTerm);
      }

      return Skeletonizer(
        enabled: evaluationvm.isLoading,
        child: WidgetSemester(
            finalValue: evaluationvm.termname
                ? evaluationvm.programs![3].sem1
                : evaluationvm
                    .programs![3].sem2, //semesterevaluation1['finalValue'],
            programName: programName,
            programValue: evaluationvm.termname
                ? evaluationvm.programs!
                    .sublist(0, evaluationvm.programs!.length - 1)
                    .map((program) => program.sem1)
                    .toList()
                : evaluationvm.programs!
                    .sublist(0, evaluationvm.programs!.length - 1)
                    .map((program) => program.sem2)
                    .toList(), // semesterevaluation1['programValue'],
            selectedTerm: selectedTerm,
            dropdownmenu:
                // dropdownmenu: Column(
                //   children: [
                //     Container(
                //       padding: const EdgeInsets.only(left: 5, right: 5),
                //       decoration: BoxDecoration(
                //           borderRadius: BorderRadius.circular(15),
                //           color: const Color(AppColor.secondaryTwoColor)),
                //       child:
                // SizedBox(
                //     width: 80,
                //     height: 40,
                Row(
              children: [
                Expanded(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    child: Row(children: [
                      Radio(
                        value: terms[0],
                        groupValue: evaluationvm.currentTerm,
                        onChanged: (val) {
                          evaluationvm.currentTerm = val!;
                          evaluationvm.updateTerm(evaluationvm.currentTerm);
                        },
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(terms[0]),
                    ]),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    child: Row(children: [
                      Radio(
                        value: terms[1],
                        groupValue: evaluationvm.currentTerm,
                        onChanged: (val) {
                          evaluationvm.currentTerm = val!;
                          evaluationvm.updateTerm(evaluationvm.currentTerm);
                        },
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(terms[1]),
                    ]),
                  ),
                ),
              ],
            )),

        // child: DropdownButton(
        //     borderRadius: BorderRadius.circular(15),
        //     // menuWidth: MediaQuery.of(context).size.width,
        //     value: evaluationvm.currentTerm,
        //     items: terms
        //         .map((e) => DropdownMenuItem(value: e, child: Text(e)))
        //         .toList(),
        //     onChanged: (val) {
        //       evaluationvm.updateTerm(val!);

        //       //value.updateNextGrade(val);
        //     }),
        //     ),
        //     const Space(
        //       height: 15,
        //     )
        //   ],
        // ),
      );
    }));
  }
}
