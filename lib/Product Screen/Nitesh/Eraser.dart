import 'package:flutter/material.dart';
import 'package:stationery_store/CartScreen.dart';

import '../../Product Tile/product_tile.dart';

class Eraser  extends StatelessWidget {
  const Eraser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Eraser',
          style: TextStyle(
            fontWeight: FontWeight.bold,color: Colors.white  // Correct fontWeight
          ),
        ),
        backgroundColor: Colors.teal,
      ),

      body: ListView(
        children: [
          Image.network('https://m.media-amazon.com/images/I/81cEHIOY5DL._SX522_.jpg'),
          Divider(),
          ProductTile(
            name: 'Apsara Rub-A-Long Big Eraser',
            price: 40,
            onPressed: () {

              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => CartScreen(
                  cartItems: [
                    CartItem(name: 'Apsara Rub-A-Long Big Eraser', price: 40),
                  ],
                ),
              ));
            },
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              '''Apsara Rub-A-Long Big Eraser | Colourful Erasers | Available in 5 Vibrant Colours | No trace of colour while erasing | Soft & Smooth | Residue sticks to eraser | Fun Eraser for Kids | 20 Erasers Pack
 \n\n 
About this item:
Colour: Multicolour
Pattern Name: Eraser
Brand	Apsara
Colour	Multicolour
Material	Synthetic Rubber
Product Dimensions	40L x 15W Millimeters
Recommended Uses For Product

1. Vibrant colourful erasers for joyful erasing.
2. Doesn't leave trace of colour while erasing.
3. Erases graphite without damaging paper.
4. Soft and smooth on paper.
5. It is plastic free.''',
              style: const TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
