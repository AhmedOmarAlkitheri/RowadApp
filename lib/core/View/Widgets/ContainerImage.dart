import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:rowadapp/core/ViewModel/Registration_VM.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    super.key,
    required this.image,
  });

  final XFile? image;
//  final int isProductOrCategory;
  // final String? netWorkImage;

  @override
  Widget build(BuildContext context) {
    var registrationVm = Provider.of<RegistrationVm>(context, listen: false);
    // var categoryVm = Provider.of<CategoryVm>(context, listen: false);
    return Stack(
      children: [
        Container(
          width: 150,
          height: 150,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColor.graycolor,
          ),
          clipBehavior: Clip.antiAlias,
          child: image != null
              ? Image.file(
                  fit: BoxFit.cover,
                  File(image!.path),
                )
              : Image.asset("assets/images/personprofile.png"),
        ),
        Positioned(
          bottom: 0,
          right: -10,
          child: IconButton(
              color: const Color(AppColor.primaryColor),
              onPressed: registrationVm.getPicture,
              icon: const Icon(Icons.photo_camera_back)),
        )
      ],
    );
  }
}
