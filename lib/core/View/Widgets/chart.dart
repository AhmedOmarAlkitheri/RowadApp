import 'package:flutter/material.dart';

import '../../../global/theme/AppColor/appColor_LightMode.dart';

class PercentageCircle extends StatelessWidget {
  final double percentage;
  final String label;

  const PercentageCircle({
    required this.percentage,
    required this.label,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              height: 80,
              width: 80,
              child: CircularProgressIndicator(
                value: percentage / 100,
                backgroundColor: Colors.grey.shade300,
                valueColor: const AlwaysStoppedAnimation<Color>(Appcolorlightmode.green),
                strokeWidth: 6,
              ),
            ),
            Text(
              '${percentage.toInt()} %',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Appcolorlightmode.green,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color(Appcolorlightmode.blackColor),
          ),
        ),
      ],
    );
  }
}
