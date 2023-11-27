

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../app_theme/app_colors.dart';

class DropDownFormFileds extends StatelessWidget {
  const DropDownFormFileds({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}



DropdownMenuItem<String> dropdownMenuItems(String value, String text){
     return  DropdownMenuItem(
         value: value,
         child: Text(text,
           style: Theme.of(Get.context!).textTheme.titleSmall?.copyWith(
               color:AppColor.greyColor1
           ),));
  }
