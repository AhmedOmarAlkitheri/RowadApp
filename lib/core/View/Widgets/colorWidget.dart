

import 'package:flutter/material.dart';
import 'package:rowadapp/global/theme/AppColor/appColor_DarkMode.dart';
import 'package:rowadapp/global/theme/AppColor/appColor_LightMode.dart';

  

Color ColorMethod (BuildContext ctx ,int light , int dark){
   bool isDarkMode = Theme.of(ctx).brightness == Brightness.dark;
return  isDarkMode
        ? Color(light)
        : Color(dark);
 }