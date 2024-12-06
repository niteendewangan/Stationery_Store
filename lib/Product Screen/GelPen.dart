import 'package:flutter/material.dart';
import 'package:stationery_store/CartScreen.dart';
import '../Product Tile/product_tile.dart';

class GelPen extends StatelessWidget {
  const GelPen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Gel Pen',
          style: TextStyle(
            fontWeight: FontWeight.bold,  // Correct fontWeight
              color: Colors.white,
          ),
        ),
        backgroundColor: Colors.teal,
      ),

      body: ListView(
        children: [
          Image.network('https://m.media-amazon.com/images/I/61-lsjcFs5L._SX679_.jpg'),
          Divider(),
          ProductTile(
            name: 'FLAIR Glass 0.6mm Gel Pen',
            price: 100,
            onPressed: () {
              // Add BallPen to cart and navigate to CartScreen
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => CartScreen(
                  cartItems: [
                    CartItem(name: 'FLAIR Glass 0.6mm Gel Pen', price: 100),
                  ],
                ),
              ));
            },
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text("FLAIR Glass 0.6mm Gel Pen | Water Proof Ink For Smooth Flow System | Low-Viscosity Ink For Smudge Free Writing | Quick Dry Ink | Transparent Body With Fine Tip | Black ink, Pack of 10\n\n"

                '''About this item:\n
Package Includes - Flair Glass 0.6mm Gel Pen | Black ink, Pack of 10\n
Flair Glass 0.6mm Gel Pen Gives You The Smooth Writing Experience For Comfortable Writing.\n
Writes Great Without Skipping, Smearing & Stuttering.\n
Comfortable & Ergonomic Grip For Easy Handling Of The Pen.\n
These Pens Are Suitable For School, College & Office. Ideal For Writing, Journaling, Note-Taking, Underlining & Much More.
''',
              style: const TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
