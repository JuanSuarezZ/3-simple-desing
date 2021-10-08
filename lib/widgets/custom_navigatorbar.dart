import 'package:disenio1/providers/iu_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomNavigationBarForAll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);

    final currentIndex = uiProvider.selectedMenuOpt;

    return BottomNavigationBar(
      onTap: (int i) => uiProvider.selectedMenuOpt = i, // se selecciono i
      currentIndex: currentIndex,
      elevation: 0,
      backgroundColor: Color(0xff2a334b),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      mouseCursor: null,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bar_chart_rounded),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.store_mall_directory_rounded),
          label: "",
        )
      ],
    );
  }
}
