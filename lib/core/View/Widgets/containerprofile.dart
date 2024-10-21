import 'package:flutter/material.dart';

import '../../../global/theme/AppColor/appColor_LightMode.dart';

class Containerprofile extends StatelessWidget {
  const Containerprofile({super.key, required this.columnwidget});
  final List<Widget> columnwidget;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(25)),
        color: Color(Appcolorlightmode.whiteColor),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),

            blurRadius: 4,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: columnwidget,
      ),
    );
  }
}
