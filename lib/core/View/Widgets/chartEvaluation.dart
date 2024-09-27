import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

PieChartData datachart({required double val}) {
  return PieChartData(sections: showingSections(val));
}

List<PieChartSectionData>? showingSections(double Value) {
  double sum = 0;

  sum += Value;

  return List.generate(2, (i) {
    final radius = 15.0;

    switch (i) {
      case 0:
        return PieChartSectionData(
          color: Color(AppColor.primaryColor),
          value: Value,
          radius: radius,
          titleStyle: TextStyle(),
        );

      case 1:
        return PieChartSectionData(
          color: Color(AppColor.secondaryColor),
          value: 100 - sum,
          radius: radius,
        );
      default:
        throw Error();
    }
  });
}
