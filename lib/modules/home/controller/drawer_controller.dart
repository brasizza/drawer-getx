import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyDrawerController extends GetxController {
  final _selectedIndex = 0.obs;
  int get selectedIndex => _selectedIndex.value;
  set selectedIndex(int newValue) => _selectedIndex(newValue);
  final items = [].obs;

  @override
  void onInit() {
    items.add(
      {
        'titulo': 'Home',
        'subtitulo': 'Ir para a pagina inicial',
        'icone': const Icon(
          Icons.abc_sharp,
          color: Colors.white,
        ),
        'rota': '/',
      },
    );

    items.add(
      {
        'titulo': 'Perfil',
        'subtitulo': 'Alterar seu perfil',
        'icone': const Icon(
          Icons.person,
          color: Colors.white,
        ),
        'rota': '/',
      },
    );

    items.add(
      {
        'titulo': 'Configuracao',
        'subtitulo': 'Alterar suas configuracoes',
        'icone': const Icon(
          Icons.charging_station_outlined,
          color: Colors.white,
        ),
        'rota': '/',
      },
    );

    super.onInit();
  }
}
