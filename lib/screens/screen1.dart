

import 'package:flutter/material.dart';

class Screen1  extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Center(
          
        child: Column(
              children: [


                Image(image: AssetImage('assets/perrito.jpg'),),

                Titulo(),
                
                ButtonSection(),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  child: Text("Dolor eiusmod aliqua cillum pariatur tempor Lorem excepteur magna id occaecat in. Cillum magna dolore ea occaecat fugiat consequat fugiat eu sint tempor. Eu veniam in eiusmod sit duis do dolore adipisicing velit elit velit non. Officia consectetur exercitation commodo do exercitation do.")
                ),


              ],
        ),

      );
    
  }
}


class Titulo extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Column(
        
        children: [
          
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
            child: Row(
             children: [
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text("Oeschinen Lake Campground",style: TextStyle( fontWeight: FontWeight.bold),),
                   Text("Kandersteg, Switzerland",style: TextStyle( color: Colors.black45 ),)
                 ]
               ), 
               Expanded(child: Container(color: Colors.white,height: 20,),),      
               Icon(Icons.star, color: Colors.orange,size: 36,),
               Text("41"), 
               SizedBox(width: 10,)          
             ],
            ),
          ),
        ],    
    );
  }
}

class CustomButton extends StatelessWidget {

  static TextStyle estilo1 = TextStyle(color: Colors.blue, fontSize: 20 );
  final IconData icon;
  final String text; 

  const CustomButton({
    Key?key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
  
    return Column(
      children: [

        Icon( this.icon , color: Colors.blue,size: 36,),
        Text(this.text,style: estilo1 ),
      ],
    );
  
  
  }

}

class ButtonSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomButton(icon: Icons.phone,text: "Call",),
          CustomButton(icon: Icons.send,text: "Route",),
          CustomButton(icon: Icons.share,text: "Share",),
        ],

      ),
    );

  }



}
