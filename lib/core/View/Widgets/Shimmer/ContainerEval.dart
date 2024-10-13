import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rowadapp/core/View/Widgets/AppBarTerms.dart';
import 'package:rowadapp/core/View/Widgets/ContainerEvaluation.dart';
import 'package:rowadapp/core/View/Widgets/Navigationbar.dart';
import 'package:rowadapp/core/View/Widgets/Shimmer/evalcontainershimmmer.dart';
import 'package:rowadapp/core/ViewModel/EvaluationVM.dart';
import 'package:rowadapp/global/components/Skeletonizer.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

class Containereval extends StatelessWidget {
  const Containereval({super.key, required this.selectedTerm});

  //  required this.ResidualResult,
  final int selectedTerm;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.green,
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
            children: [
              const SizedBox(
                height: 30,
              ),
              Expanded(child: Appbarterms(selectedTerm: selectedTerm)),
              const SizedBox(
                height: 10,
              ),
              Expanded(flex: 8, child: ShimmerContainerEvaluation()),
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
