


import 'package:cassava_project/presentation/controllers/sign_in_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../controllers/create_account_type_controller.dart';
import '../../../../controllers/create_vendor_account_controller.dart';
import '../../../../controllers/create_customer_account_controller.dart';
import '../../../../controllers/forgot_password_controller.dart';



class CreateAccountBindings extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => CreateAccountTypeController());
    Get.lazyPut(() => CreateCustomerAccountController(),fenix: true);
    Get.lazyPut(() => CreateVendorAccountController(),fenix: true);
    Get.lazyPut(() => SignInController(),fenix: true);
    Get.lazyPut(() => ForgotPasswordController(),fenix: true);

  }

}