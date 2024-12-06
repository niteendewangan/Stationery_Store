import 'package:flutter/material.dart';
import 'package:stationery_store/CartScreen.dart';
import '../Product Tile/product_tile.dart';

class A4SizeNotebook extends StatelessWidget {
  const A4SizeNotebook({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'A4 Size Notebook',
          style: TextStyle(
              fontWeight: FontWeight.bold,color: Colors.white  // Correct fontWeight
          ),
        ),
        backgroundColor: Colors.teal,
      ),

      body: ListView(
        children: [
          Image.network('https://m.media-amazon.com/images/I/51ABycJIABL._SX300_SY300_QL70_FMwebp_.jpg'),
          Divider(),
          ProductTile(
            name: 'Navneet Youva ',
            price: 306,
            onPressed: () {
              // Add BallPen to cart and navigate to CartScreen
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => CartScreen(
                  cartItems: [
                    CartItem(name: 'Navneet Youva ', price: 306),
                  ],
                ),
              ));
            },
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              '''Navneet Youva | Soft Bound | Long Note Book | Single Line|172 Pages | Pack of 6\n\n
About this item :\n
Youva's long notebooks come with classy cover designs in brighter colours that will appeal to today’s youth
Its vibrant look and high gloss finish makes it look modern and refreshing.
It is a soft cover book in Regular size, 172 pages with pin binding and back pressing.
Each book has an index page with a label, a special box on each page for writing date, page no. and days of the week
These long books are environmentally friendly.

              ''',
              style: const TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
