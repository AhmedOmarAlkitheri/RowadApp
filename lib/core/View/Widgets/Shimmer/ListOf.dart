//ListOfShimmer
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

import '../../../../global/theme/AppColor/appColor_LightMode.dart';

class ListOfShimmer extends StatelessWidget {
  const ListOfShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 3,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(right: 10, left: 10, bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(Appcolorlightmode.whiteColor),
                  boxShadow: [
                    BoxShadow(
                      color: Color(Appcolorlightmode.blackColor).withOpacity(0.25),
                      blurRadius: 3,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                width: MediaQuery.of(context).size.width - 20,
                height: 83,
                child: Center(
                  child: ListTile(
                    leading: Shimmer.fromColors(
                      baseColor: Colors.grey[300]!,
                      highlightColor: Colors.grey[100]!,
                      child: Container(
                        margin: const EdgeInsets.only(right: 10),
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    title: Shimmer.fromColors(
                      baseColor: Colors.grey[300]!,
                      highlightColor: Colors.grey[100]!,
                      child: Container(
                        width: 100,
                        height: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey[300],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
