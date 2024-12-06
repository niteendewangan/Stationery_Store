import 'package:flutter/material.dart';
import 'package:stationery_store/CartScreen.dart';

import '../../Product Tile/product_tile.dart';

class scissors extends StatelessWidget {
  const scissors({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'scissors',
          style: TextStyle(
              fontWeight: FontWeight.bold,color: Colors.white  // Correct fontWeight
          ),
        ),
        backgroundColor: Colors.teal,
      ),

      body: ListView(
        children: [
          Image.network('https://m.media-amazon.com/images/I/51iyNgQ4bqL._SX522_.jpg'),
          Divider(),
          ProductTile(
            name: 'Scotch Dual-Purpose Scissor Cum Cutter ',
            price: 755,
            onPressed: () {
              // Add BallPen to cart and navigate to CartScreen
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => CartScreen(
                  cartItems: [
                    CartItem(name: 'Scotch Dual-Purpose Scissor Cum Cutter ', price: 755),
                  ],
                ),
              ));
            },
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              '''Scotch Dual-Purpose Scissor Cum Cutter | Universal Tool for Unboxing, Box Cutting, Art & Craft with Durable Design, Soft Grip, Non-Stick & Safe Blades, Multicolor \n\n 
About this item:

Dual purpose design - Use as a scissors or a boxcutter
Soft-comfort grip handles are designed for better comfort and ease of use
Non-stick silicon coating resists adhesive residue buildup
Easily adjustable and have durable pivot, with visible mode indicator
Box-cutting mode features locking handles that are designed for safety.''',
              style: const TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
