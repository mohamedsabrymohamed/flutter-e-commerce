import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (BuildContext context, int index) {
        return SingleProduct(
          product_name: product_list[index]['name'],
          product_pic: product_list[index]['picture'],
          product_old_price: product_list[index]['old_price'],
          product_price: product_list[index]['price'],
        );
      },
    );
  }
}

class SingleProduct extends StatelessWidget {
  final product_name;
  final product_pic;
  final product_old_price;
  final product_price;
  SingleProduct(
      {this.product_name,
      this.product_pic,
      this.product_old_price,
      this.product_price});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        child: Material(
          child: InkWell(
            onTap: null,
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    product_name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  title: Text(
                    "\$$product_price",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  subtitle: Text(
                    "\$$product_old_price",
                    style: TextStyle(
                      color: Colors.black54,
                      decoration: TextDecoration.lineThrough,
                      fontWeight: FontWeight.w800,
                    ),
                  ),,
                ),
              ),
              child: Image.asset(
                product_pic,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
