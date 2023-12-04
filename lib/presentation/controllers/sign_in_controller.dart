
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constants/app_constant.dart';

class SignInController extends GetxController{
  final GlobalKey<FormState> signInFormKey = GlobalKey<FormState>();
  TextEditingController password = TextEditingController();
  TextEditingController email = TextEditingController();

  var hidePassword=true.obs;




  submit(){
    if(signInFormKey.currentState!.validate()){

         signInFormKey.currentState!.reset();
      ///go to next page
    }


  }

  emailValidator() {
    return (String? value) {
      if (!GetUtils.isEmail(value!)) {
        return emailValidatorText;
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
}