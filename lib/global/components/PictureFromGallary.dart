import 'package:image_picker/image_picker.dart';

getPictureFromGallary() async {
  ImagePicker imagePicker = ImagePicker();
  return await imagePicker.pickImage(source: ImageSource.gallery);
}
 



//   import 'dart:io';

// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:eccommerce_app_admin/Core/constants/color_constants.dart';
// import 'package:eccommerce_app_admin/VM/category_vm/category_vm.dart';
// import 'package:eccommerce_app_admin/VM/product_vm/product_vm.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:provider/provider.dart';


