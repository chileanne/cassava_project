

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constants/app_constant.dart';
import '../../core/shared_widgets/drop_down_form_field.dart';

class CreateBusinessAccountController extends GetxController{

  final GlobalKey<FormState> vendorTypeFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> createVendorFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> createVendorPasswordFormKey = GlobalKey<FormState>();


  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController city = TextEditingController();


  var selectedValue ="".obs;
  var hidePassword=true.obs;
  var hideConfirmPassword=true.obs;



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


  createVendor(){

    if(createVendorFormKey.currentState!.validate()){
      ///go to
    }

  }


  createVendorPassword(){

    if(createVendorPasswordFormKey.currentState!.validate()){
      ///go to
    }

  }


  nameValidator() {
    return (String? value) {
      if (value!.isEmpty) {
        return empty;
      }

      return null;
    };
  }

  addressValidator() {
    return (String? value) {
      if (value!.isEmpty) {
        return empty;
      }

      return null;
    };
  }

  cityValidator() {
    return (String? value) {
      if (value!.isEmpty) {
        return empty;
      }

      return null;
    };
  }

  emailValidator() {
    return (String? value) {
      if (!GetUtils.isEmail(value!)) {
        return emailValidatorText;
      }

      return null;
    };
  }


  phoneValidator() {
    return (String? value) {
      if(value!.isEmpty){
        return empty;
      }else if (value.length<11) {
        return "Phone Number cannot be less than 11";
      }

      return null;
    };
  }



  passwordValidator(){
    return (String? value){
      if(value!.isEmpty){
        return empty;
      }else if(value.length<6){

        return passwordLessThanSixText;

      }else{
        return null;
      }


    };
  }


  confirmPasswordValidator(){
    return (String? value){
      if(value!.isEmpty){
        return empty;
      }else if(value.length<6){

        return passwordLessThanSixText;

      }else if(!value.contains(password.text.toString())){
        return "password does not match";
      }else{
        return null;
      }


    };
  }


}