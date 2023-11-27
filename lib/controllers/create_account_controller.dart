

import 'package:cassava_project/core/shared_widgets/drop_down_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/app_theme/app_colors.dart';

class CreateAccountController extends GetxController{

  var selectedValue ="".obs;



  List<DropdownMenuItem<String>> get dropdownItems{
    List<DropdownMenuItem<String>> menuItems=[];

        menuItems.add(dropdownMenuItems("", "Choose an Option"));
        menuItems.add(dropdownMenuItems("Customer", "Customer"));
       menuItems.add(dropdownMenuItems("Vendor", "Vendor"));
       return menuItems;
  }


}