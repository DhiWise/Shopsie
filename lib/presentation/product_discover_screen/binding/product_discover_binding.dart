import '../controller/product_discover_controller.dart';
import 'package:get/get.dart';

class ProductDiscoverBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductDiscoverController());
  }
}
