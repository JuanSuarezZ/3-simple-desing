import 'dart:math';

import 'package:flutter/material.dart';


class Background extends StatelessWidget {
  
    final boxDecoration = BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.1, 0.8],
              colors: [
    
                Color(0xff6445D6),
                Color(0xff573AD6)
              ]
            ),
          );

  @override
  Widget build(BuildContext context) {
        return Stack(
          
          children: [
             
            Container(decoration: boxDecoration,),
            Positioned(
              top: -80,
              left: -20,
              child: _PinkBox(),
            ),
          ],
            
    );
  } 
}


class _PinkBox extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
          angle: -pi / 5.5 ,
          child: Container(
        margin: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        width: 350,
        height: 320,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          gradient: LinearGradient(
            colors: [
              
              Color(0xffFA25B3),
              Color(0xffBB31D4),
              
            ]
          ),

        ),


      ),
    );
  }
}