import 'package:flutter/material.dart';
import 'package:stationery_store/CartScreen.dart';

import '../../Product Tile/product_tile.dart';

class MarkerScreen extends StatelessWidget {
  const MarkerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Marker',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.teal,
      ),
      body: ListView(
        children: [
          Image.network(
            'https://m.media-amazon.com/images/I/81MSB2mJEgL._SX522_.jpg',
            fit: BoxFit.cover,
          ),
          const Divider(),
          ProductTile(
            name: 'Uni-Ball Posca 3M 0.9-1.3mm Bullet Shaped Markers',
            price: 1500, // Corrected number format
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => CartScreen(
                  cartItems: [
                    CartItem(
                      name: 'Uni-Ball Posca 3M 0.9-1.3mm Bullet Shaped Markers',
                      price: 1500, // Corrected number format
                    ),
                  ],
                ),
              ));
            },
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: MarkerDescription(),
          ),
        ],
      ),
    );
  }
}

// Extracted Product Description Widget
class MarkerDescription extends StatelessWidget {
  const MarkerDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      '''Uni-Ball Posca 3M 0.9-1.3mm Bullet Shaped Markers | Multicolour Ink | Pack Of 8\n\n
About this item:

- **Package Includes:** uni-ball Posca 3M Bullet Shaped Marker Pen, Tip Size - 0.9-1.3 mm, Mechanism - Click-off Cap, Ink Color - Multicolor, Pack of 8.
- **High-Quality Ink:** Contains water-based pigment ink that is lightfast, water-resistant, and writes on almost any surface.
- **Non-Toxic:** Posca markers are alcohol-free, waterproof, and lightfast. They do not contain harmful chemicals.
- **Multi-Surface Use:** Professionally tested on over 50 surface types, including canvas, fabric, metal, surfboards, rocks, and windshields.
- **Creative Applications:** Ideal for decorating photos, glass writing, skateboarding, t-shirt designs, rock painting, and more.''',
      style: TextStyle(fontSize: 16),
    );
  }
}
