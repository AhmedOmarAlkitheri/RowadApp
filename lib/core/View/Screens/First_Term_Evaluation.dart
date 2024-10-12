import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rowadapp/core/DB/data.dart';
import 'package:rowadapp/core/View/Screens/MonthEvaluation.dart';
import 'package:rowadapp/core/View/Widgets/AppBarTerms.dart';
import 'package:rowadapp/core/View/Widgets/Navigationbar.dart';
import 'package:rowadapp/core/View/Widgets/WidgetSemester.dart';
import 'package:rowadapp/core/ViewModel/EvaluationVM.dart';
import 'package:rowadapp/global/components/Skeletonizer.dart';
import 'package:rowadapp/global/components/scroll_BottomBar.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

class FirstTermEvaluation extends StatelessWidget {
  FirstTermEvaluation({super.key});
  int selectedTerm = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          //   color: Colors.black,
          gradient: LinearGradient(
            colors: [
              Color(AppColor.secondaryColor),
              Color(AppColor.secondaryTwoColor)
            ],
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomStart,
          ),
        ),
        child: Container(
          margin: const EdgeInsets.only(right: 10, left: 10),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              Appbarterms(selectedTerm: selectedTerm),
              // Appbarterms(selectedTerm: selectedTerm),
              const SizedBox(
                height: 5,
              ),
              Expanded(
                  child: Stack(children: [
                NotificationListener<ScrollNotification>(
                  onNotification: (scrollNotification) {
                    final provider =
                        Provider.of<scroll_BottomBar>(context, listen: false);
                    if (scrollNotification.metrics.pixels > 100) {
                      provider.setVisibility(false);
                    } else {
                      provider.setVisibility(true);
                    }
                    return true;
                  },
                  child: Consumer<Evaluationvm>(
                      builder: (context, evaluationvm, child) {
                    if (evaluationvm.errorMessage != null) {
                      return Center(child: Text(evaluationvm.errorMessage!));
                    }
                    if (evaluationvm.isLoading) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    if (evaluationvm.month == null) {
                      return const Center(child: Text('لا توجد بيانات متاحة.'));
                    }

                    //  if (evaluationvm.programs == null ||
                    //                     evaluationvm.!.data!.isEmpty) {
                    //                   return const Center(child: Text('لا توجد إشعارات متاحة'));
                    //                 }
                    return Skeletonizer(
                        enabled: evaluationvm.isLoading,
                        child: MonthEvaluation());
                  }),
                ),
                Consumer<scroll_BottomBar>(
                  builder: (context, provider, child) {
                    return AnimatedPositioned(
                      duration: const Duration(milliseconds: 300),
                      bottom: provider.isVisible ? 20 : -100,
                      // right: 10,
                      child: const Navigationbar(selectedTerm: 2),
                    );
                  },
                ),
              ])),
              // const SizedBox(
              //   height: 15,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
