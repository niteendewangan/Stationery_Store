import 'package:flutter/material.dart';
import 'package:stationery_store/CartScreen.dart';
import '../../Product Tile/product_tile.dart';

class DeskAccessories extends StatelessWidget {
  const DeskAccessories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Desk Accessories',
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
            'https://m.media-amazon.com/images/I/71L+cUsZEBL._SX679_.jpg',
            fit: BoxFit.cover,
          ),
          const Divider(),
          ProductTile(
            name: 'Deskart Desk Organizer With Remote',
            price: 900,
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => CartScreen(
                  cartItems: [
                    CartItem(
                      name: 'Deskart Desk Organizer With Remote',
                      price: 900,
                    ),
                  ],
                ),
              ));
            },
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: DeskOrganizerDescription(),
          ),
        ],
      ),
    );
  }
}

// Extracted Product Description Widget
class DeskOrganizerDescription extends StatelessWidget {
  const DeskOrganizerDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      '''Deskart Desk Organizer With Remote, Business Visiting Card & Mobile Holder | Multipurpose Wooden Pen And Pencil Holder Stand For Office Desk And Study Table, Desk Supplies Organizers, Brown\n\n
About this item:

- **MULTIPURPOSE**: This wooden pen and pencil holder can organize desk stationery items, business cards, and mobile devices.
- **SUITABLE FOR**: Ideal for storing pens, pencils, markers, scissors, and more. It can also function as a visiting card holder in offices, work desks, schools, or drawing desks.
- **QUALITY**: Made from high-quality laminated wood, ensuring durability. Parts are joined with heavy adhesives, making it stable.
- **DESIGN**: Simple yet attractive design with a matte wooden finish. Available in two colors: wood and white.
- **HASSLE-FREE**: Easy to clean and manage, with a compact design that fits neatly on any desk.''',
      style: TextStyle(fontSize: 16),
    );
  }
}
