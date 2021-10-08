import 'package:flutter/material.dart';


class PageTitle extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        bottom: false,
        child: Container(
          margin: EdgeInsets.symmetric( horizontal: 20, vertical: 20 ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text("Total: 1.000.000\$ ", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
              SizedBox(height: 10,),
              Text("Disponible para retiros: 5/18/2021 \nTransaccion particular", style: TextStyle(fontSize: 16, color: Colors.white)),
            ],
          ),
        ),

    );
  }



}