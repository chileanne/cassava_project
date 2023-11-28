import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../core/constants/app_constant.dart';

class CreateCustomerAccountController extends GetxController {

  final GlobalKey<FormState> customerAccountFormKey = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();





  submit(){
    if(customerAccountFormKey.currentState!.validate()){

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

      }else if(value.contains(password.text.toString())){
          return "password does not match";
    }else{
        return null;
      }


    };
  }

}
