import 'package:shimmer/shimmer.dart';
import 'package:flutter/material.dart';

class ShimmerContainerEvaluation extends StatelessWidget {
  const ShimmerContainerEvaluation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
      width: MediaQuery.of(context).size.width,
      height: 450,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              blurRadius: 3,
              offset: const Offset(0, 4),
            ),
          ],
          borderRadius: BorderRadius.circular(20),
          color: Colors.white),
      child: Column(
        children: [
          Stack(children: [
            buildShimmerChartEval(context),
          ]),
          const SizedBox(height: 20),
          const Divider(thickness: 2),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 0),
              padding: const EdgeInsets.only(left: 13, right: 13, top: 0),
              height: 300,
              width: MediaQuery.of(context).size.width - 30,
              child: buildShimmerList(),
            ),
          )
        ],
      ),
    );
  }

  Widget buildShimmerChartEval(BuildContext context ) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: SizedBox(
        height: 100,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 20,
                 decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey[300],
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: 50,
                  height: 20,
                 decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey[300],
                  ),
                ),
              ],
            ),
            Container(
              width: 100,
              height: 100,
             decoration: BoxDecoration(
              shape: BoxShape.circle,
                  
                    color: Colors.grey[300],
                  ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildShimmerList() {
    return ListView.builder(
      itemCount: 5, 
      itemBuilder: (ctx, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Shimmer.fromColors(
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
              Shimmer.fromColors(
                baseColor: Colors.grey[300]!,
                highlightColor: Colors.grey[100]!,
                child: Container(
                  width: 50,
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey[300],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
