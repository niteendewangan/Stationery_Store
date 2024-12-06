import 'package:flutter/material.dart';
import 'package:stationery_store/CartScreen.dart';
import '../../Product Tile/product_tile.dart';

class Glue extends StatelessWidget {
  const Glue({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Glue',
          style: TextStyle(
            fontWeight: FontWeight.bold,color: Colors.white  // Correct fontWeight
          ),
        ),
        backgroundColor: Colors.teal,
      ),

      body: ListView(
        children: [
          Image.network('https://m.media-amazon.com/images/I/31d+G3bWT2L._SX342_SY445_.jpg'),
          Divider(),
          ProductTile(
            name: 'Fevicol Mr Adhesive Glue For Arts And Crafts 200 gm ',
            price: 160,
            onPressed: () {
              // Add BallPen to cart and navigate to CartScreen
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => CartScreen(
                  cartItems: [
                    CartItem(name: 'Fevicol Mr Adhesive Glue For Arts And Crafts 200 gm ', price: 160),
                  ],
                ),
              ));
            },
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              '''Fevicol Mr Adhesive Glue For Arts And Crafts 200 gm with one free key ring, White,:

India’s “Most Trusted” Fevicol brand that can be used for multiple occasions Universal craft glue ideal for pasting variety of materials from papers, candy sticks, corrugated sheets to heavy craft accessories and making slime Classic white glue formula that becomes invisible when dry giving a clean finish to project work/article Easily peels away from hands and clothes for quick cleanup
Fevicol glue
Art and craft
School project
GSMDumanhill registered listing
Strong adhesive
White colour
Useful for arts and crafts.''',
              style: const TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
