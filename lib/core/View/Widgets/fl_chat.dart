//import 'package:fl_chart_app/presentation/resources/app_resources.dart';
import 'package:fl_chart/fl_chart.dart';
//import 'package:fl_chart_app/presentation/widgets/indicator.dart';
import 'package:flutter/material.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

class ContainerChartEval extends StatefulWidget {
  const ContainerChartEval({super.key});

  @override
  State<StatefulWidget> createState() => ContainerChartEvalState();
}

class ContainerChartEvalState extends State {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Container(
        //color: Colors.black,
        height: 100,
        width: MediaQuery.of(context).size.width,
        child: Row(
          //  crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // SizedBox(
                  //   height: 20,
                  // ),
                  Row(
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        color: Color(AppColor.primaryColor),
                      ),
                      Text("النتيجة التي حصلت عليها")
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        color: Color(AppColor.secondaryColor),
                      ),
                      Text("النتيجة التي لم يحصل عليها")
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
              width: 100,
              child: PieChart(datachart),
            )
          ],
        ));
  }

/*   [
    PieChartSectionData(
      color: Colors.green,
      value: 30,
      //    title: '15%',
      radius: 2,
      titleStyle: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.green,
      ),
    ),
    PieChartSectionData(
      color: Colors.blue,
      value: 30,
      //    title: '15%',
      radius: 2,
      titleStyle: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.blue,
      ),
    )
  ], */
  final PieChartData datachart = PieChartData(
      sections: showingSections([40], [Colors.green, Colors.blue]));
}

//List<PieChartSectionData> piechart,
List<PieChartSectionData>? showingSections(
    List<double> Value, List<Color> colorlist) {
  double sum = 0;
  for (var i = 0; i < Value.length; i++) {
    sum += Value[i];
  }

  return List.generate(Value.length + 1, (i) {
    final isTouched = i == -1;
    final fontSize = 10.0;
    final radius = 15.0;
    //   const shadows = [Shadow(color: Colors.black, blurRadius: 2)];
    switch (i) {
      case 0:
        return PieChartSectionData(
          color: Color(AppColor.primaryColor),
          value: Value[i],
          //    title: '15%',
          radius: radius,
          titleStyle: TextStyle(),
          // titleStyle: TextStyle(
          //   fontSize: fontSize,
          //   fontWeight: FontWeight.bold,
          //   color: Colors.black,
          //   // shadows: shadows,
          // ),
        );

      case 1:
        return PieChartSectionData(
          color: Color(AppColor.secondaryColor),
          value: 100 - sum,
          //   title: '15%',
          radius: radius,
          // titleStyle: TextStyle(
          //   fontSize: fontSize,
          //   fontWeight: FontWeight.bold,
          //   color: Colors.black,
          //   //shadows: shadows,
          // ),
        );
      default:
        throw Error();
    }
  });
}
