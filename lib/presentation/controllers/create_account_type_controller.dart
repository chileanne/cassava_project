

import 'package:cassava_project/core/app_routes/app_routes.dart';
import 'package:cassava_project/core/shared_widgets/drop_down_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CreateAccountTypeController extends GetxController{

  final GlobalKey<FormState> accountForm = GlobalKey<FormState>();

  var selectedValue ="".obs;





  List<DropdownMenuItem<String>> get dropdownItems{
    List<DropdownMenuItem<String>> menuItems=[];

        menuItems.add(dropdownMenuItems("", "Choose an Option"));
        menuItems.add(dropdownMenuItems("Customer", "Customer"));
       menuItems.add(dropdownMenuItems("Vendor", "Vendor"));
       return menuItems;
  }


  submit(){
    if(accountForm.currentState!.validate()){


      if(selectedValue.value=="Customer"){
        ///go to create customer account
        Get.toNamed(AppRoutes.createCustomerAccount);
      }else{
        ///go to vendor account type
        Get.toNamed(AppRoutes.createVendorAccountType);

      }

    }
  }


}