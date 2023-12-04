
 import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/get_utils/src/get_utils/get_utils.dart';

import '../../core/constants/app_constant.dart';

class ForgotPasswordController extends GetxController {

 final GlobalKey<FormState> forgetPasswordFormKey = GlobalKey<FormState>();
 TextEditingController email = TextEditingController();






 submit(){
  if(forgetPasswordFormKey.currentState!.validate()){
   ///go back to sign in screen
   Get.back();
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


 }