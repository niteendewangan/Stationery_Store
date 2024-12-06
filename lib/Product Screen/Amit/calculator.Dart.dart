import 'package:flutter/material.dart';
import 'package:stationery_store/CartScreen.dart';

import '../../Product Tile/product_tile.dart';


class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Calculator',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,  // Correct fontWeight
          ),
        ),
        backgroundColor: Colors.teal,
      ),
      body: ListView(
        children: [
          Image.network(
            'https://m.media-amazon.com/images/I/71JVSfjW56L._SX522_.jpg',
            fit: BoxFit.cover,
          ),
          const Divider(),
          ProductTile(
            name: 'Basics AB-512 12-Digit Display Calculator (Black)',
            price: 600,
            onPressed: () {
              // Navigate to CartScreen with the calculator added to the cart
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => CartScreen(
                  cartItems: [
                    CartItem(
                      name: 'Basics AB-512 12-Digit Display Calculator (Black)',
                      price: 600,
                    ),
                  ],
                ),
              ));
            },
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: ProductDescription(),
          ),
        ],
      ),
    );
  }
}

// Extracted Product Description Widget for better readability
class ProductDescription extends StatelessWidget {
  const ProductDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      '''Basics AB-512 12-Digit Display Calculator (Black) \n\n 
About this item:

- Improved Accuracy: Features a 112-step Check and Correct capability, ensuring precise calculations every time.
- Convenient Usability: Boasts a 12-digit large LCD display with auto replay, making it easy to view and review calculations. Anti-slip pads in four corners provide hassle-free usage.
- Durable Design: Incorporates a hard cover for extra protection, a high-quality anti-scratch LCD screen, and anti-break technology, ensuring longevity and reliability.
- Enhanced Functionality: Special buttons for Grand Total (GT), Mark Up (MU), and Correction (I>), along with operation symbols on the display, provide advanced functionality.
- Versatile Power Options: Dual powered by battery and solar energy, with a 3-year battery life, providing enduring performance for extended usage.

**Warranty:** 1-year limited warranty from the date of purchase on product (not on accessories).''',
      style: TextStyle(fontSize: 16),
    );
  }
}
