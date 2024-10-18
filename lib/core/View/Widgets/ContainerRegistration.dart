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
      child: Container(
        padding: const EdgeInsets.only(left: 5, right: 5),
        height: 80,
        child: Column(
          children: [
            Expanded(
              child: Row(
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
            ),
            Expanded(
              child: Container(
                //  padding: const EdgeInsets.only(left: 10, right: 10),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Text(
                        "معلومات\nشخصية",
                        // style: TextStyle(fontSize: 17),
                      ),
                    ),
                    // SizedBox(
                    //   width: 20,
                    // ),
                    Expanded(
                      child: Text(
                        "معلومات\nولي الامر",
                        // style: TextStyle(fontSize: 15),
                      ),
                    ),
                    // SizedBox(
                    //   width: 20,
                    // ),
                    Expanded(
                      child: Text(
                        "معلومات\nالدراسة",
                        // style: TextStyle(fontSize: 15),
                      ),
                    ),
                    // SizedBox(
                    //   width: 20,
                    // ),
                    Expanded(
                      child: Text(
                        "معلومات\nالتواصل",
                        // style: TextStyle(fontSize: 15),
                      ),
                    ),
                    // SizedBox(
                    //   width: 40,
                    // ),
                    Expanded(
                      child: Text(
                        "حدثنا\n عنك",
                        // style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
