import '../controller/main_landing_controller.dart';
import 'package:get/get.dart';

class MainLandingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainLandingController());
  }
}
