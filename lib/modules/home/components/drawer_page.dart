import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/drawer_controller.dart';

class DrawerPage extends GetView<MyDrawerController> {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const UserAccountsDrawerHeader(
            margin: EdgeInsets.only(bottom: 0.0),
            accountName: Text('Meu nome'),
            accountEmail: Text('meu@email.com.br'),
            currentAccountPicture: CircleAvatar(
              radius: 100.0,
              child: FlutterLogo(),
              backgroundColor: Colors.transparent,
            ),
          ),
          Obx(() => Expanded(
                child: ListView.builder(
                  itemCount: controller.items.length,
                  itemBuilder: (_, index) {
                    final _item = controller.items[index];
                    return Obx(() => ListTile(
                          title: Text(_item['titulo']),
                          subtitle: Text(_item['subtitulo']),
                          leading: _item['icone'],
                          selected: (controller.selectedIndex == index),
                          onTap: () => controller.selectedIndex = index,
                        ));
                  },
                ),
              )),
        ],
      ),
    );
  }
}
