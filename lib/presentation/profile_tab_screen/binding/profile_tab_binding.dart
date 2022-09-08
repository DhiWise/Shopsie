import '../controller/profile_tab_controller.dart';
import 'package:get/get.dart';

class ProfileTabBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileTabController());
  }
}
