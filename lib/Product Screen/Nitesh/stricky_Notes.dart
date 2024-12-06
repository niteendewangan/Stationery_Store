import 'package:flutter/material.dart';
import 'package:stationery_store/CartScreen.dart';

import '../../Product Tile/product_tile.dart';

class stricky_Notes extends StatelessWidget {
  const stricky_Notes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'stricky_Notes',
          style: TextStyle(
            fontWeight: FontWeight.bold,color: Colors.white  // Correct fontWeight
          ),
        ),
        backgroundColor: Colors.teal,
      ),

      body: ListView(
        children: [
          Image.network('https://m.media-amazon.com/images/I/61YA5KjNvBL._SX522_.jpg'),
          Divider(),
          ProductTile(
            name: 'OFIXO 400 Sheets',
            price: 80,
            onPressed: () {
              // Add BallPen to cart and navigate to CartScreen
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => CartScreen(
                  cartItems: [
                    CartItem(name: 'OFIXO 400 Sheets', price: 112),
                  ],
                ),
              ));
            },
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              '''OFIXO 400 Sheets (5 Mix Colors * 80 Sheets Each Color) Fluorescent Paper Self Adhesive Memo Pad Sticky Notes Bookmark Point It Marker Memo Sticker
 \n\n 
About this item:

Office, school and home use, use for all your to-do lists and reminders, grab even the busiest persons attention,
Individual package: Each sticky note has an opp bag to ensure that the product is clean when it reaches your hand, the nice carton helps you a better collection
Paper are 100% made of natural wood, non-toxic and odorless. And combined with the exquisite papermaking process makes it more toughness
Easy to use: The sticky pads have line so you can write straight and perfect to record a number or quick note, use for all your to-do lists and reminders, perfect to keep your thoughts in-sync.
Country of Origin: India''',
              style: const TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
