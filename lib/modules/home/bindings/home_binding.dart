import 'package:drawer/modules/home/controller/drawer_controller.dart';
import 'package:drawer/modules/home/controller/home_controller.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.put<MyDrawerController>(MyDrawerController(), permanent: true);
  }
}
