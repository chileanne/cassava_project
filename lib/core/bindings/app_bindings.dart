
import 'package:cassava_project/presentation/controllers/purchase_controller.dart';
import 'package:get/get.dart';

class AppBindings extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies


    Get.lazyPut(() => PurchaseController(),fenix: true);
  }

}