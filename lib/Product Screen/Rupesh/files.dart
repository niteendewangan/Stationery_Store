import 'package:flutter/material.dart';
import 'package:stationery_store/CartScreen.dart';
import '../../Product Tile/product_tile.dart';

class Files extends StatelessWidget {
  const Files({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'files',
          style: TextStyle(
            fontWeight: FontWeight.bold,color: Colors.white  // Correct fontWeight
          ),
        ),
        backgroundColor: Colors.teal,
      ),

      body: ListView(
        children: [
          Image.network('https://m.media-amazon.com/images/I/91mtWvwpbeL._SL1500_.jpg '),
          Divider(),
          ProductTile(
            name: 'AmazingHind Leatherette Files for documents',
            price: 599,
            onPressed: () {
              // Add BallPen to cart and navigate to CartScreen
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => CartScreen(
                  cartItems: [
                    CartItem(name: 'AmazingHind Leatherette Files for documents', price: 599),
                  ],
                ),
              ));
            },
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              '''AmazingHind Leatherette Files for documents.File folders for documents.Certificate File Holder to Store Your documents with 20 Leafs (B4, Grey Brown_20 Leafs)
About this item:

Size: B4 | Colour: Grey Brown | This file folders for certificates comes with 20 transparent leafs. 
| Inside leaf size: length-14.5 inch or 36 cm | width-10 inch or 25 cm
In this document folder file for certificates you can store your important paper and documents into their saparate multi pockets. 
It can be used to keep upto 40 documents, certificates
Perfect organizer for your client meetings and business travel.
 Protect your documents with durable, and tear-resistant poly files perfect for office, travel, home, meeting or school use. 
 Keep stuff organized and secure
Best folder file and document bag in this category. 
Files and folders for office legal size, leatherite document file and folder. 
Closure mechanism zipper. Files and folders for documents
All of our portfolio is handmade, so we can make a unique and personalized portfolio for you. 
Several interior pockets, zipper closure provide added security and safe in transport.''',
              style: const TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
