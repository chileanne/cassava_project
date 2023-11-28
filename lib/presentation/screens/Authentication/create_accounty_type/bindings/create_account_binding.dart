


import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../controllers/create_account_controller.dart';
import '../../../../controllers/create_business_account_controller.dart';
import '../../../../controllers/create_customer_account_controller.dart';



class CreateAccountBindings extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => CreateAccountController(),fenix: true);
    Get.lazyPut(() => CreateCustomerAccountController(),fenix: true);
    Get.lazyPut(() => CreateBusinessAccountController(),fenix: true);
  }

}