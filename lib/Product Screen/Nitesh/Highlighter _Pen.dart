import 'package:flutter/material.dart';
import 'package:stationery_store/CartScreen.dart';
import '../../Product Tile/product_tile.dart';

class Highlighter_Pen extends StatelessWidget {
  const Highlighter_Pen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Highlighter_Pen',
          style: TextStyle(
            fontWeight: FontWeight.bold,color: Colors.white  // Correct fontWeight
          ),
        ),
        backgroundColor: Colors.teal,
      ),

      body: ListView(
        children: [
          Image.network('https://m.media-amazon.com/images/I/51sBkjXpVbL._SX522_.jpg'),
          Divider(),
          ProductTile(
            name: 'Camlin Kokuyo Highlighter Pen',
            price: 180,
            onPressed: () {
              // Add BallPen to cart and navigate to CartScreen
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => CartScreen(
                  cartItems: [
                    CartItem(name: 'Camlin Kokuyo Highlighter Pen', price: 180),
                  ],
                ),
              ));
            },
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              '''Camlin Kokuyo Highlighter Pen Five Colours (Set Of 5,Yellow,Pink,Green,Orange,Blue)
 \n\n 
About this item:
Color: Yellow, Pink, Green, Orange, Blue
Tip Design: bulled tip
Marker Type: permanent die''',
              style: const TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
