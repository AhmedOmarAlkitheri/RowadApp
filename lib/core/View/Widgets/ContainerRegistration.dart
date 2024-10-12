import 'package:flutter/material.dart';
import 'package:rowadapp/core/View/Widgets/ContainerStep.dart';
import 'package:rowadapp/core/View/Widgets/Line.dart';

class Containerregistration extends StatefulWidget {
  const Containerregistration(
      {super.key, required this.isActive, required this.location});
  final bool isActive;
  final int location;
  @override
  State<Containerregistration> createState() => _ContainerregistrationState();
}

class _ContainerregistrationState extends State<Containerregistration> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 80,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: widget.location == 1
                      ? Containerstep(isActive: widget.isActive)
                      : Containerstep(isActive: !widget.isActive),
                ),
                const Expanded(
                  child: Line(
                    height: 2,
                    width: 40,
                  ),
                ),
                // Space(
                //   width: 3,
                // ),
                Expanded(
                  child: widget.location == 2
                      ? Containerstep(isActive: widget.isActive)
                      : Containerstep(isActive: !widget.isActive),
                ),
                const Expanded(
                  child: Line(
                    height: 2,
                    width: 40,
                  ),
                ),
                // Space(
                //   width: 3,
                // ),
                Expanded(
                  child: widget.location == 3
                      ? Containerstep(isActive: widget.isActive)
                      : Containerstep(isActive: !widget.isActive),
                ),
                const Expanded(
                  child: Line(
                    height: 2,
                    width: 40,
                  ),
                ),
                // Space(
                //   width: 0.3,
                // ),
                Expanded(
                  child: widget.location == 4
                      ? Containerstep(isActive: widget.isActive)
                      : Containerstep(isActive: !widget.isActive),
                ),
                const Expanded(
                  child: Line(
                    height: 2,
                    width: 40,
                  ),
                ),
                // Space(
                //   width: 1,
                // ),
                Expanded(
                  child: widget.location == 5
                      ? Containerstep(isActive: widget.isActive)
                      : Containerstep(isActive: !widget.isActive),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(left: 0, right: 0),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "معلومات\nشخصية",
                    // style: TextStyle(fontSize: 17),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    "معلومات\nولي الامر",
                    // style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    "معلومات\nالدراسة",
                    // style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    "معلومات\nالتواصل",
                    // style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(
                    width: 33,
                  ),
                  Text(
                    "حدثنا\n عنك",
                    // style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
