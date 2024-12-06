import 'package:flutter/material.dart';
import 'package:stationery_store/CartScreen.dart';
import '../../Product Tile/product_tile.dart';

class Notebook extends StatelessWidget {
  const Notebook({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notebook',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.teal,
      ),
      body: ListView(
        children: [
          Image.network(
            'https://m.media-amazon.com/images/I/61NUA0O7WTL._SX522_.jpg',
            fit: BoxFit.cover,
          ),
          const Divider(),
          ProductTile(
            name: 'Classmate Pulse 6 Subject Spiral Notebook',
            price: 168,
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => CartScreen(
                  cartItems: [
                    CartItem(
                      name: 'Classmate Pulse 6 Subject Spiral Notebook',
                      price: 168,
                    ),
                  ],
                ),
              ));
            },
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: NotebookDescription(),
          ),
        ],
      ),
    );
  }
}

// Extracted Product Description Widget
class NotebookDescription extends StatelessWidget {
  const NotebookDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      '''Classmate Pulse 6 Subject Spiral Notebook - Pack of 1 | Single Line | 300 Pages | A4 - 29.7cm x 21.0cm | Attractive Cover Designs | Soft Cover | Notebooks for College Students\n\n
**About this item:**

- **Design:** Cover design may vary based on stock availability.
- **Features:** 6-subject notebook with single-line ruling, 300 pages, spiral binding, and soft cover (297mm x 210mm).
- **Multi-Subject:** Combines six subjects in one convenient notebook.
- **Eco-Friendly:** Made with eco-friendly, elemental chlorine-free paper.
- **Quality:** Durable paper suitable for long-term use.''',
      style: TextStyle(fontSize: 16),
    );
  }
}
