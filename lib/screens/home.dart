import 'package:disenio1/providers/iu_provider.dart';
import 'package:disenio1/screens/screen1.dart';
import 'package:disenio1/screens/screen2.dart';
import 'package:disenio1/screens/screen3.dart';
import 'package:disenio1/widgets/custom_navigatorbar.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _HomePageBody(),
      bottomNavigationBar: CustomNavigationBarForAll(),
    );
  }
}

class _HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Obtener el selected menu opt
    final uiProvider = Provider.of<UiProvider>(context);

    // Cambiar para mostrar la pagina respectiva
    final currentIndex = uiProvider.selectedMenuOpt;

    switch (currentIndex) {
      case 0:
        return Screen1();

      case 1:
        return Screen2();

      case 2:
        return Screen3();

      default:
        return Screen1();
    }
  }
}
