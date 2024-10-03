import 'package:flutter/material.dart';
import 'package:rowadapp/helpers/error_widget.dart';

class ErrorsExceptionView extends StatelessWidget {
  const ErrorsExceptionView(
      {super.key, required this.currentState, required this.child});
  final String currentState;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (currentState == "loading") {
      return const Center(child: CircularProgressIndicator());
    } else if (currentState == "connectionError") {
      return const ErrorWidgetView(error: "لا يوجد اتصال انترنت");
    } else if (currentState == "badResponse") {
      return const ErrorWidgetView(error: "badResponse");
    } else if (currentState == "connectionTimeout") {
      return const ErrorWidgetView(error: "connectionTimeout");
    }
    return child;
  }
}
