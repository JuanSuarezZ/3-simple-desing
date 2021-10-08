import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          Page1(
            imagen: "img1.png",
            color: Colors.black,
          ),
          Page1(
            imagen: "img2.png",
            color: Colors.white,
          ),
          Page1(
            imagen: "img3.png",
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  final String? imagen;
  final Color? color;

  const Page1({Key? key, this.imagen, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Background(
          imagen: imagen,
        ),
        MainContent(color: color)
      ],
    );
  }
}

class MainContent extends StatelessWidget {
  final Color? color;

  const MainContent({Key? key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textStyle =
        TextStyle(fontSize: 50, color: color, fontWeight: FontWeight.bold);

    return Center(
      child: SafeArea(
        bottom: false,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              " 11°",
              style: textStyle,
            ),
            Text(
              "Miercoles",
              style: textStyle,
            ),
            Expanded(child: Container()),
            Icon(
              Icons.keyboard_arrow_down_rounded,
              size: 60,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}

class Background extends StatelessWidget {
  final String? imagen;

  const Background({Key? key, this.imagen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/$imagen"),
        ),
      ),
    );
  }
}
