import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [Page1(), Page1(), Page1()],
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [Background(), MainContent()],
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(
        fontSize: 50, color: Colors.white, fontWeight: FontWeight.bold);

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
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/imagen.png"),
        ),
      ),
    );
  }
}
