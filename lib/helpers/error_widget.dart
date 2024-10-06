import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rowadapp/core/ViewModel/Registration_VM.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

class ErrorWidgetView extends StatelessWidget {
  const ErrorWidgetView({super.key, required this.error});
  final String error;

  @override
  Widget build(BuildContext context) {
    var registrationVm = Provider.of<RegistrationVm>(context, listen: false);
    // var productVm = Provider.of<ProductVm>(context, listen: false);
    return RefreshIndicator(
      color: const Color(AppColor.primaryColor),
      onRefresh: () async {
        //   await registrationVm();
        // await categoryVm.refershData();
      },
      child: SingleChildScrollView(
        // physics: BouncingScrollPhysics(),
        child: Container(
          constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height - 146),
          child: Center(
            child: Text(error),
          ),
        ),
      ),
    );
  }
}
