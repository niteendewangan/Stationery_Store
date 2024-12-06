import 'package:flutter/material.dart';
import 'package:stationery_store/CartScreen.dart';
import '../../Product Tile/product_tile.dart';
class Diaries extends StatelessWidget {
  const Diaries({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Diaries',
          style: TextStyle(
            fontWeight: FontWeight.bold,color: Colors.white  // Correct fontWeight
          ),
        ),
        backgroundColor: Colors.teal,
      ),

      body: ListView(
        children: [
          Image.network('https://m.media-amazon.com/images/I/31MYtwfHW7L._SX300_SY300_QL70_FMwebp_.jpg'),
          Divider(),
          ProductTile(
            name: 'Crownlit Diary 2025',
            price: 465,
            onPressed: () {
              // Add BallPen to cart and navigate to CartScreen
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => CartScreen(
                  cartItems: [
                    CartItem(name: 'Crownlit Diary 2025', price: 465),
                  ],
                ),
              ));
            },
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              '''Crownlit Diary 2025 New Year, Size A5, Full Sunday with Lock, Monthly Planner \n\n 
About this item:

Full Sunday: Yes, Paper Quality: 80GSM Ink Absorbent Paper
Page Front: Hardbond Wooden Texture with Lock Diary, Size: A5 Size, 5.82 in x 8.26 in
Monthly Planner Starting of Each Month, Important Information Pages Starting of Diary
Compact Size and easy to carry, Important Information Pages, Maps, Section for Notes
Date & Time on Each Page, Well Divided Months for Easy References.''',
              style: const TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
