
import 'package:flutter/material.dart';
import 'package:cassava_project/core/app_theme/app_colors.dart';

class AppTextStyle{


  static AppTextStyle instance = AppTextStyle();


   TextStyle titleSmall = TextStyle(
      fontSize: 14.0,
     fontWeight: FontWeight.w400,
       color:AppColor.blackColor
   );


  TextStyle? titleMedium = TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color:AppColor.greyColor2,
  );



  TextStyle titleLarge= TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w400,
    color:AppColor.greyColor2,
  );




}