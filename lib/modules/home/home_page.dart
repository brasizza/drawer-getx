import 'package:drawer/modules/home/components/drawer_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerPage(),
      appBar: AppBar(title: const Text('HomePage')),
      body: const SafeArea(
        child: Text('HomeController'),
      ),
    );
  }
}
