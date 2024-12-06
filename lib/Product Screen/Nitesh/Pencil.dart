import 'package:flutter/material.dart';
import 'package:stationery_store/CartScreen.dart';
import '../../Product Tile/product_tile.dart';

class Pencil extends StatelessWidget {
  const Pencil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pencil',
          style: TextStyle(
            fontWeight: FontWeight.bold,color: Colors.white  // Correct fontWeight
          ),
        ),
        backgroundColor: Colors.teal,
      ),

      body: ListView(
        children: [
          Image.network('https://m.media-amazon.com/images/I/71ohP2OPlZS._SX522_.jpg'),
          Divider(),
          ProductTile(
            name: 'Doms 12 Shades Super Soft Color Pencils Flat Tin Box',
            price: 100,
            onPressed: () {
              // Add BallPen to cart and navigate to CartScreen
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => CartScreen(
                  cartItems: [
                    CartItem(name: 'Doms 12 Shades Super Soft Color Pencils Flat Tin Box', price: 100),
                  ],
                ),
              ));
            },
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              '''Doms 12 Shades Super Soft Color Pencils Flat Tin Box | Smooth Color Application | For Blending & Experimenting Different Art Strokes | Non-Toxic & Safe For Childrens | Pack of 1
 \n\n 
About this item:

Product : Doms 12 Shades Super Soft Color Pencils Flat Tin Box | 1
Soft & Beautiful Hexagonal Design Provides A Comfortable Grip, Even With Long Periods Of Use.
Ideal For Blending & Experimenting Different Art Strokes.
Non-Toxic, Easy To Use & Safe For Childrens.
Perfect For Artists & Students, Durable Set Of Pencils That Will Last For A Long Time.''',
              style: const TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
