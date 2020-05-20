import 'package:flutter/material.dart';

AppBar customAppBar() {
  return AppBar(
    elevation: 0.1,
    backgroundColor: Colors.red,
    title: Text('E-Commerce'),
    actions: [
      IconButton(
        icon: Icon(Icons.search, color: Colors.white),
        onPressed: null,
      ),
      IconButton(
        icon: Icon(Icons.shopping_cart, color: Colors.white),
        onPressed: null,
      ),
    ],
  );
}
