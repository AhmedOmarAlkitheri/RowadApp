import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:rowadapp/core/View/Widgets/chartEvaluation.dart';
import 'package:rowadapp/core/View/Widgets/fl_chat.dart';

class Containerevaluation extends StatefulWidget {
  const Containerevaluation(
      {super.key,
      required this.finalValue,
      required this.semesterResult,
      required this.ResidualResult,
      required this.programName,
      required this.programValue});

  final double finalValue;
  final String semesterResult, ResidualResult;
  final List<String> programName;
  final List<double> programValue;
  @override
  State<Containerevaluation> createState() => _ContainerevaluationState();
}

class _ContainerevaluationState extends State<Containerevaluation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, left: 15, right: 15),
      width: MediaQuery.of(context).size.width,
      height: 450,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.25),
          blurRadius: 3,
          // spreadRadius: 2,
          offset: Offset(0, 4),
        ),
      ], borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Column(
        children: [
          Stack(children: [
            Positioned(
                child: ContainerChartEval(
                    value: widget.finalValue,
                    semesterResult: widget.semesterResult,
                    ResidualResult: widget.ResidualResult)),
            Positioned(
              left: 48,
              top: 36,
              child: Column(
                children: [
                  Text("% ${widget.finalValue.toInt()}",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20))
                ],
              ),
            )
          ]),
          Container(
            alignment: Alignment.topRight,
            child: Text(
              "الاجمالي",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Divider(
            thickness: 2,
          ),
          SizedBox(
            height: 300,
            width: MediaQuery.of(context).size.width - 30,
            child: LayoutBuilder(builder: (context, constraints) {
              int columnCount = (constraints.maxWidth / 180).floor();
              return GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: widget.programValue.length,
                  itemBuilder: (ctx, index) {
                    return SizedBox(
                      height: 130,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 100,
                            child: PieChart(
                              datachart(val: widget.programValue[index]),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text("${widget.programName[index]}")
                        ],
                      ),
                    );
                  });
            }),
          )
        ],
      ),
    );
  }
}
