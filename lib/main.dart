import 'package:disenio1/providers/iu_provider.dart';
import 'package:disenio1/screens/home.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
  

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => new UiProvider() ),
        
      ],

    //cambiar color del noch
      child:  MaterialApp(

        
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'home',
        routes: {
          'home' : ( _ ) => Homepage(),
          
        },
      ),
    );
  }
}
