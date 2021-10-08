import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  final TableRow tableRow = TableRow(
    children: [
      _SingleCard(color: Colors.blue, icon: Icons.border_all, text: 'Servicios'),
      _SingleCard(color: Colors.red, icon: Icons.payment, text: 'Pagos'),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        tableRow,
        tableRow,
        tableRow,
        tableRow,
    
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard(
      {required this.icon, required this.color, required this.text});

  static BoxDecoration boxDecoration = BoxDecoration(
      color: Color.fromRGBO(60, 40, 160, 0.7),
      borderRadius: BorderRadius.circular(30));

  @override
  Widget build(BuildContext context) {
    var container = Container(
                height: 190,
                decoration: boxDecoration,
                child: Column(
    
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: this.color,
                      child: Icon(
                        this.icon,
                        color: Colors.white,
                      ),
                      radius: 30,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      this.text,
                      style: TextStyle(fontSize: 18, color: this.color),
                    ),
                  ],    
                ),
              );
        return _CardBackground(widget: container,);
  }
}


class _CardBackground extends StatelessWidget {
  final Widget widget;

  const _CardBackground({
    Key? key,
    required this.widget

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
          margin: EdgeInsets.all(10),   
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: widget,
        ),
      ),
    );
  }
}

