
import 'package:cassava_project/controllers/create_business_account_controller.dart';
import 'package:cassava_project/controllers/create_customer_account_controller.dart';
import 'package:cassava_project/screens/Authentication/signup/customer_account/create_customer_account_screen.dart';
import 'package:get/get.dart';

import '../../../../controllers/create_account_controller.dart';

class CreateAccountBindings extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => CreateAccountController(),fenix: true);
    Get.lazyPut(() => CreateCustomerAccountController(),fenix: true);
    Get.lazyPut(() => CreateBusinessAccountController(),fenix: true);
  }

}