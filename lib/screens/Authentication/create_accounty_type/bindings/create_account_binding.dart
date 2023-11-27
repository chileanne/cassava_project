
import 'package:get/get.dart';

import '../../../../controllers/create_account_controller.dart';

class CreateAccountBindings extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => CreateAccountController());
  }

}