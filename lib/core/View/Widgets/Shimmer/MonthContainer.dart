import 'package:flutter/material.dart';
import 'package:rowadapp/core/View/Widgets/Shimmer/buildprogramshimmer.dart';
import 'package:rowadapp/global/constraints/app_color.dart';
import 'package:shimmer/shimmer.dart';

class Monthcontainer extends StatelessWidget {
  const Monthcontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3.0),
      child: Card(
        elevation: 6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Shimmer.fromColors(
    baseColor: Colors.grey[300]!, 
    highlightColor: Colors.grey[100]!, 
    child: Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.grey[300],  ),
      width: 200,
      height: 24,
     
    ),
  ),
              const Divider(
                color: Color(AppColor.primaryColor),
                thickness: 2,
              ),
           buildProgramSectionShimmer(),
             buildProgramSectionShimmer(),
               buildProgramSectionShimmer(),
            ],
          ),
        ),
      ),
    );
  }
}
