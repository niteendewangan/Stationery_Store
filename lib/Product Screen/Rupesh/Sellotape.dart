import 'package:flutter/material.dart';
import 'package:stationery_store/CartScreen.dart';
import '../../Product Tile/product_tile.dart';

class Sellotape extends StatelessWidget {
  const Sellotape({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'sellotape',
          style: TextStyle(
            fontWeight: FontWeight.bold,color: Colors.white  // Correct fontWeight
          ),
        ),
        backgroundColor: Colors.teal,
      ),

      body: ListView(
        children: [
          Image.network('https://m.media-amazon.com/images/I/41kjeFb+yJL._SX342_SY445_.jpg'),
          Divider(),
          ProductTile(
            name: 'Sellotape Original Golden Tape',
            price: 150,
            onPressed: () {
              // Add BallPen to cart and navigate to CartScreen
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => CartScreen(
                  cartItems: [
                    CartItem(name: 'Sellotape Original Golden Tape', price: 150),
                  ],
                ),
              ));
            },
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              '''Sellotape Original Golden Tape premium, strong, tear by hand tape ideal for office, school projects, art work, bonding of paper or card' \n\n 
About this item:

Extra sticky – The adhesive tape is ideal for sticking all sorts of household objects, such as envelopes or parcels.
Transparent – The multi-purpose Sellotape clear tape appears gold on the roll, 
however is clear when applied to objects and paper and is also easy to unwind.
Everyday use – The strong tape can easily be torn off and is suitable for wrapping and 
everyday use for a range of needs including sticking cards, envelopes or parcels.
Easy to use – The wrapping tape is ideal for office supplies and comes with an easy starter tab, 
eliminating the search for the end of the roll when first opening the tape.
Package Contents – Sellotape Original Golden, super sticky tape for everyday needs, 
ideal for sticking all sorts of household objects, clear when applied, easy to tear off, 18mmx25m.''',
              style: const TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
