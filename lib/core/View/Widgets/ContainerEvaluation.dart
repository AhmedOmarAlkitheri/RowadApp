import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:rowadapp/core/View/Widgets/Space.dart';
import 'package:rowadapp/core/View/Widgets/chartEvaluation.dart';
import 'package:rowadapp/core/View/Widgets/fl_chat.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

class Containerevaluation extends StatefulWidget {
  const Containerevaluation(
      {super.key,
      required this.finalValue,
      required this.programName,
      required this.programValue});

  final double ? finalValue;

  final List<String> programName;
  final List<double?> programValue;
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
          Stack(children: [
            Positioned(
                child: ContainerChartEval(
              value: widget.finalValue,
            )),
            // Positioned(
            //   left: 48,
            //   top: 36,
            //   child: Column(
            //     children: [
            //       Text("% ${widget.finalValue.toInt()}",
            //           style: const TextStyle(
            //               fontWeight: FontWeight.bold, fontSize: 20))
            //     ],
            //   ),
            // )
          ]),
          const Space(
            height: 20,
          ),
          const Divider(
            thickness: 2,
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 0),
              padding: const EdgeInsets.only(left: 13, right: 13, top: 0),
              height: 300,
              width: MediaQuery.of(context).size.width - 30,
              child: LayoutBuilder(builder: (context, constraints) {
                // if (constraints.maxWidth == 300) {

                // }

                //  int columnCount = (constraints.maxWidth / 180).floor();
                return ListView.builder(
                    itemCount: widget.programValue.length,
                    itemBuilder: (ctx, index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.programName[index],
                            style: const TextStyle(
                               fontFamily: 'vazir-medium',
                              // fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(
                            height: 60,
                          ),
                          Text("${widget.programValue[index]?.toStringAsFixed(2)}%",
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Color(AppColor.primaryColor)
                                  ))
                        ],
                      );
                      // );
                    });
              }),
            ),
          )
        ],
      ),
    );
  }
}


     // return SizedBox(
                    //   height: 130,
                    //   child: Column(
                    //     children: [
                          // SizedBox(
                          //   height: 100,
                          //   child: PieChart(
                          //     datachart(val: widget.programValue[index]),
                          //   ),
                          // ),
                          // const SizedBox(height: 5),
                          // Text(widget.programName[index])