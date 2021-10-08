import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {

  final int index = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(

      backgroundColor: Color(0xff6445D6),
      selectedItemColor: Color(0xffFA25B3),
      mouseCursor: null,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: index,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today),
          label: "",
          
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bar_chart_rounded),
          label: "aa",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.store_mall_directory_rounded),
          label: "aaa",
        )
      ],
      
      
    );
  }
}