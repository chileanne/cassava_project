

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/shared_widgets/drop_down_form_field.dart';

class CreateBusinessAccountController extends GetxController{

  final GlobalKey<FormState> vendorTypeFormKey = GlobalKey<FormState>();

  var selectedValue ="".obs;



  List<DropdownMenuItem<String>> get dropdownItems{
    List<DropdownMenuItem<String>> menuItems=[];

    menuItems.add(dropdownMenuItems("", "Choose an Option"));
    menuItems.add(dropdownMenuItems("Individual", "Individual"));
    menuItems.add(dropdownMenuItems("Company", "Company"));
    return menuItems;
  }



  submit(){

    if(vendorTypeFormKey.currentState!.validate()){
      ///go to
    }

  }


}