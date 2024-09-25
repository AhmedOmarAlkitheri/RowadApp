import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

List<PieChartSectionData>? showingSections() {
  return List.generate(2, (i) {
    final isTouched = i == -1;
    final fontSize = isTouched ? 25.0 : 16.0;
    final radius = isTouched ? 60.0 : 50.0;
    const shadows = [Shadow(color: Colors.black, blurRadius: 2)];
    switch (i) {
      case 0:
        return PieChartSectionData(
          color: Colors.green,
          value: 30,
          //    title: '15%',
          radius: radius,
          titleStyle: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: Colors.green,
            shadows: shadows,
          ),
        );
      case 1:
        return PieChartSectionData(
          color: Colors.green[200],
          value: 30,
          //   title: '15%',
          radius: radius,
          titleStyle: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: Colors.green[200],
            shadows: shadows,
          ),
        );
      default:
        throw Error();
    }
  });
}
