import 'package:flutter/material.dart';
import 'package:stationery_store/CartScreen.dart';
import '../Product Tile/product_tile.dart';

class FountainPen extends StatelessWidget {
  const FountainPen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Fountain Pen',
          style: TextStyle(
              fontWeight: FontWeight.bold,color: Colors.white  // Correct fontWeight
          ),
        ),
        backgroundColor: Colors.teal,
      ),

      body: ListView(
        children: [
          Image.network('https://m.media-amazon.com/images/I/51u7WWqFSJL._SX679_.jpg'),
          Divider(),
          ProductTile(
            name: 'Parker Vector Standard Fountain Pen',
            price: 365,
            onPressed: () {
              // Add BallPen to cart and navigate to CartScreen
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => CartScreen(
                  cartItems: [
                    CartItem(name: 'Parker Vector Standard Fountain Pen', price: 365),
                  ],
                ),
              ));
            },
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              '''Parker Vector Standard Fountain Pen| Black Body Color With 1 Ink Cartridge | Unique Gifts For Employees | Ideal For Corporate Use\n\n
About this item:\n
Experience the elegance of writing with the Parker Vector Standard Fountain Pen, featuring a fine nib for precise strokes.\n
The refillable design ensures a sustainable and long-lasting writing experience.\n
The sleek black design with chrome trim adds a touch of sophistication to your writing instruments.\n
Ideal for writers, this pen provides a smooth and enjoyable writing experience.\n
A perfect gift for any occasion, this fountain pen is sure to be cherished by anyone who receives it.''',
              style: const TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
