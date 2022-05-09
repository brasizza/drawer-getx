import 'package:drawer/modules/home/bindings/home_binding.dart';
import 'package:drawer/modules/home/home_page.dart';
import 'package:get/get.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: '/',
      page: () => HomePage(),
      binding: HomeBinding(),
    )
  ];
}
