

import 'package:cassava_project/core/constants/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../app_theme/app_colors.dart';

class DropDownFormFileds extends StatelessWidget {
  final List<DropdownMenuItem<String>> items;
  final String value;
  final  Function(dynamic value) onChanged;

  const DropDownFormFileds({
    super.key,
    required this.items,
    required this.value,
    required this.onChanged});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return   DropdownButtonFormField(
      validator: (String? value){
        if(value!.isEmpty){
          return empty;
        }

        return null;
      },
      dropdownColor: AppColor.dropdownColor,
      style: theme.textTheme.titleMedium?.copyWith(
          color: AppColor.greyColor2
      ),
      isExpanded: true,
      elevation: 3,
      decoration: InputDecoration(
        isDense: true,
        enabledBorder: OutlineInputBorder(
            borderRadius:BorderRadius.circular(5.0) ,
            borderSide: BorderSide(color: theme.colorScheme.onPrimary),
            gapPadding: 1.0
        ) ,

        // border:OutlineInputBorder(
        //     borderRadius:BorderRadius.circular(5.0) ,
        //     borderSide: BorderSide(color: theme.colorScheme.onPrimary),
        //     gapPadding: 3.0
        // ),

        errorBorder: OutlineInputBorder(
            borderRadius:BorderRadius.circular(5.0) ,
            borderSide: BorderSide(color: theme.colorScheme.error),
            gapPadding: 3.0
        ),

        focusedBorder:OutlineInputBorder(
            borderRadius:BorderRadius.circular(5.0) ,
            borderSide: BorderSide(color: theme.colorScheme.onPrimary),
            gapPadding: 2.0
        ) ,


        focusedErrorBorder:OutlineInputBorder(
            borderRadius:BorderRadius.circular(5.0) ,
            borderSide: BorderSide(color: theme.colorScheme.error),
            gapPadding: 3.0
        ),
      ),
      items: items,
      value: value,
      onChanged: onChanged

    );
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
