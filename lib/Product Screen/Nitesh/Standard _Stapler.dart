import 'package:flutter/material.dart';
import 'package:stationery_store/CartScreen.dart';
import '../../Product Tile/product_tile.dart';

class Standard_Stapler  extends StatelessWidget {
  const Standard_Stapler({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Standard_Stapler',
          style: TextStyle(
            fontWeight: FontWeight.bold,color: Colors.white  // Correct fontWeight
          ),
        ),
        backgroundColor: Colors.teal,
      ),

      body: ListView(
        children: [
          Image.network('https://m.media-amazon.com/images/I/71nLhWIzXYL._SX522_.jpg'),
          Divider(),
          ProductTile(
            name: 'Husky Stapler',
            price: 249,
            onPressed: () {
              // Add BallPen to cart and navigate to CartScreen
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => CartScreen(
                  cartItems: [
                    CartItem(name: 'Husky Stapler', price: 249),
                  ],
                ),
              ));
            },
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              '''Husky Stapler No 10 with 4 Packet Stapler Pin, Standard Stapler, Full-Strip, 20 Sheet Capacity, Includes Staples
 \n\n 
About this item:

Brand	HUSKY QUALITY OUR PRIORITY
Colour	NO COLOR
Material	Alloy Steel
Style	Classic
Operation Mode	Manual''',
              style: const TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
