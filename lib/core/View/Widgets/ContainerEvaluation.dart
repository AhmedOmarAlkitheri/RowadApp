import 'package:flutter/material.dart';
import 'package:rowadapp/core/View/Widgets/fl_chat.dart';

class Containerevaluation extends StatefulWidget {
  const Containerevaluation({super.key});

  @override
  State<Containerevaluation> createState() => _ContainerevaluationState();
}

class _ContainerevaluationState extends State<Containerevaluation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
      width: MediaQuery.of(context).size.width,
      height: 450,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.25),
          blurRadius: 3,
          // spreadRadius: 2,
          offset: const Offset(0, 4),
        ),
      ], borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Column(
        children: [
          const Stack(children: [
            Positioned(child: ContainerChartEval()),
            Positioned(
              left: 37,
              top: 27,
              child: Column(
                children: [Text("% 80"), Text("جيدجيداً")],
              ),
            )
          ]),
          Container(
            alignment: Alignment.topRight,
            child: const Text("الاجمالي"),
          ),
          const Divider(
            thickness: 2,
          )

          // PercentageCircle(
          //   percentage: 80,
          //   label: "",
          // ),
        ],
      ),
    );
  }
}
