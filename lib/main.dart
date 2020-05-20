import 'package:ecommerce/widgets/app_Carousel.dart';
import 'package:ecommerce/widgets/app_bar.dart';
import 'package:ecommerce/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      drawer: customDrawer(),
      body: ListView(
        children: [
          customCarousel(),
        ],
      ),
    );
  }
}
