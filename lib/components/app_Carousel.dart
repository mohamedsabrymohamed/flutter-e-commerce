import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class customCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/c1.jpg'),
          AssetImage('images/m1.jpg'),
          AssetImage('images/w3.jpg'),
          AssetImage('images/w4.jpg'),
          AssetImage('images/m2.jpg'),
        ],
        autoplay: true,
        dotSize: 4.0,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(
          seconds: 2,
        ),
        indicatorBgPadding: 4.0,
        dotColor: Colors.red,
      ),
    );
  }
}
