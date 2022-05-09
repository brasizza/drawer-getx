import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/drawer_controller.dart';

class DrawerPage extends GetView<MyDrawerController> {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.blue,
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
                    return Obx(() => Container(
                          decoration: (controller.selectedIndex == index)
                              ? const BoxDecoration(
                                  border: Border(
                                    top: BorderSide(width: 3.0, color: Colors.white),
                                    bottom: BorderSide(width: 3.0, color: Colors.white),
                                  ),
                                )
                              : null,
                          child: ListTile(
                            title: Text(
                              _item['titulo'],
                              style: const TextStyle(color: Colors.white),
                            ),
                            subtitle: Text(
                              _item['subtitulo'],
                              style: const TextStyle(color: Colors.white),
                            ),
                            leading: _item['icone'],
                            selected: (controller.selectedIndex == index),
                            onTap: () => controller.selectedIndex = index,
                          ),
                        ));
                  },
                ),
              )),
        ],
      ),
    );
  }
}
