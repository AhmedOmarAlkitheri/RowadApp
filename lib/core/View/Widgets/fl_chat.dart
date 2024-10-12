import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:rowadapp/core/View/Widgets/Space.dart';
import 'package:rowadapp/core/View/Widgets/chartEvaluation.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

class ContainerChartEval extends StatefulWidget {
  const ContainerChartEval({
    super.key,
    required this.value,
    
  });
  final double ? value;

  @override
  State<StatefulWidget> createState() => ContainerChartEvalState();
}

class ContainerChartEvalState extends State<ContainerChartEval> {
  // int touchedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        //color: Colors.black,
        height: 100,
        width: MediaQuery.of(context).size.width,
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // SizedBox(
                  //   height: 20,
                  // ),
                  Column(
                    children: [
 Container(
            alignment: Alignment.topRight,
            child: const Text(
              "الاجمالي",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Space(height: 20,),

                         Text("% ${widget.value?.toDouble().toStringAsFixed(2)}",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20))
                      // Container(
                      //   width: 20,
                      //   height: 20,
                      //   color: const Color(AppColor.primaryColor),
                      // ),
                      // Text(widget.semesterResult)
                    ],
                  ),
                  //       const SizedBox(
                  //         height: 10,
                  //       ),
                  //       Row(
                  //         children: [
                  //           Container(
                  //             width: 20,
                  //             height: 20,
                  //             color: const Color(AppColor.secondaryColor),
                  //           ),
                  //           Text(widget.ResidualResult)
                  //         ],
                  //       ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
              width: 100,
              child: PieChart(datachart(val: widget.value)),
            )
          ],
        ));
  }
}
