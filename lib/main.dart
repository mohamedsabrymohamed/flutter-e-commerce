import 'package:ecommerce/components/app_Carousel.dart';
import 'package:ecommerce/components/app_bar.dart';
import 'package:ecommerce/components/custom_drawer.dart';
import 'package:ecommerce/components/products.dart';
import 'package:flutter/material.dart';

import 'components/categories_widget.dart';

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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Categories'),
          ),
          HorizontalList(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text('Recent Products'),
          ),
          //grid view
          Container(
            height: 320.0,
            child: Products(),
          ),
        ],
      ),
    );
  }
}
