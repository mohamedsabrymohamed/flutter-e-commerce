import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
            image_location: 'images/cats/tshirt.png',
            image_caption: 'Shirt',
          ),
          Category(
            image_location: 'images/cats/dress.png',
            image_caption: 'Dress',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;
  Category({this.image_location, this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: null,
        child: Container(
          width: 100,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 100.0,
              height: 80.0,
            ),
            subtitle: Text(
              image_caption,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
