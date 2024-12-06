import 'package:flutter/material.dart';
import 'package:stationery_store/CartScreen.dart';

import '../../Product Tile/product_tile.dart';


class Binderclips extends StatelessWidget {
  const Binderclips ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Binderclips',
          style: TextStyle(
            fontWeight: FontWeight.bold,color: Colors.white  // Correct fontWeight
          ),
        ),
        backgroundColor: Colors.teal,
      ),

      body: ListView(
        children: [
          Image.network('https://m.media-amazon.com/images/I/71AthNdS3OL._SX522_.jpg'),
          Divider(),
          ProductTile(
            name: 'Paper Binder Clip clamp',
            price: 100,
            onPressed: () {
              // Add BallPen to cart and navigate to CartScreen
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => CartScreen(
                  cartItems: [
                    CartItem(name: 'Paper Binder Clip clamp', price: 217),
                  ],
                ),
              ));
            },
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              '''True-Ally Big 51 mm, 2 inch Size Paper Binder Clip clamp for Office, Home, School, Institutions Pack of 12 Clips, Capacity 240 Pages:

Size - 51 mm , Capacity - 240 Pages, 1 dozen pack (12 clips x 1 Dozen = 12 Clips)

Steel Construction & Spring Guarantees longevity. Provides extra strong hold without slipping or releasing of your papers or crafts.
Paint is sealed this way paint does not come off on your documents, papers or crafts.
ADVANTAGE - Spring-tight binder clip keeps files bound together preventing papers from slipping or pulling out, 
tempered steel construction provides extra strong hold.
Holds papers together without leaving the mark of a staple
No punching or piercing of documents, Does not destroy documents.
Corrosion-resistant steel, re-usable, nickel-plated handles can be removed for permanent binding.
Multiple Different Uses- Paper clip to hold papers or documents together, 
can be used at home, office , school etc can also be used for storage, hanging or arts and crafts the possibilities are endless!.''',
              style: const TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
