// import 'package:flutter/material.dart';
// import 'package:stationery_store/Product%20Screen/A4SizeNotebook.dart';
// import 'package:stationery_store/Product%20Screen/Amit/Desk%20accessories.dart';
// import 'package:stationery_store/Product%20Screen/Amit/calculator.Dart.dart';
// import 'package:stationery_store/Product%20Screen/Amit/marker.Dart.dart';
// import 'package:stationery_store/Product%20Screen/Amit/notebook.Dart.dart';
// import 'package:stationery_store/Product%20Screen/Amit/scissors.Dart.dart';
// import 'package:stationery_store/Product%20Screen/FountainPen.dart';
// import 'package:stationery_store/Product%20Screen/GelPen.dart';
// import 'package:stationery_store/Product%20Screen/Nitesh/Eraser.dart';
// import 'package:stationery_store/Product%20Screen/Nitesh/Highlighter%20_Pen.dart';
// import 'package:stationery_store/Product%20Screen/Nitesh/Pencil.dart';
// import 'package:stationery_store/Product%20Screen/Nitesh/Standard%20_Stapler.dart';
// import 'package:stationery_store/Product%20Screen/Nitesh/stricky_Notes.dart';
// import 'package:stationery_store/Product%20Screen/Rupesh/Diary.dart';
// import 'package:stationery_store/Product%20Screen/Rupesh/Glue.dart';
// import 'package:stationery_store/Product%20Screen/Rupesh/Sellotape.dart';
// import 'package:stationery_store/Product%20Screen/Rupesh/files.dart';
// import 'Product Screen/BallPen.dart';
// import 'Product Screen/Rupesh/binder clips.dart';
//
// class Home_Screen extends StatelessWidget {
//   const Home_Screen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final List<Map<String, dynamic>> categories = [
//       // Add your product categories here as before.
//       // {
//       //   'name': 'Ball Pen',
//       //   'screen': BallPen(),
//       //   'image': 'https://m.media-amazon.com/images/I/610ipL2vGvL._SX679_.jpg',
//       // },
//       {
//         'name': 'Gel Pen',
//         'screen': GelPen(),
//         'image': 'https://m.media-amazon.com/images/I/61-lsjcFs5L._SX679_.jpg',
//       },
//       {
//         'name': 'Fountain Pen',
//         'screen': FountainPen(),
//         'image': 'https://m.media-amazon.com/images/I/51u7WWqFSJL._SX679_.jpg',
//       },
//       {
//         'name': 'A4 Notebook',
//         'screen': A4SizeNotebook(),
//         'image': 'https://m.media-amazon.com/images/I/51ABycJIABL._SX300_SY300_QL70_FMwebp_.jpg',
//       },
//       {
//         'name': 'Calculator',
//         'screen': Calculator(),
//         'image': 'https://m.media-amazon.com/images/I/71JVSfjW56L._SX522_.jpg',
//       },
//       {
//         'name': 'Desk Accessories',
//         'screen': DeskAccessories(),
//         'image': 'https://m.media-amazon.com/images/I/71L+cUsZEBL._SX679_.jpg',
//       },
//       {
//         'name': 'Marker',
//         'screen': MarkerScreen(),
//         'image': 'https://m.media-amazon.com/images/I/81MSB2mJEgL._SX522_.jpg',
//       },
//
//       {
//         'name': 'Notebook',
//         'screen': Notebook(),
//         'image': 'https://m.media-amazon.com/images/I/61NUA0O7WTL._SX522_.jpg',
//       },
//       {
//         'name': 'Scissors',
//         'screen': scissors(),
//         'image': 'https://m.media-amazon.com/images/I/51iyNgQ4bqL._SX522_.jpg',
//       },
//       {
//         'name': 'Eraser',
//         'screen': Eraser(),
//         'image': 'https://m.media-amazon.com/images/I/81cEHIOY5DL._SX522_.jpg',
//       },
//       {
//         'name': 'Highlighter Pen',
//         'screen': Highlighter_Pen(),
//         'image': 'https://m.media-amazon.com/images/I/51sBkjXpVbL._SX522_.jpg',
//       },
//       {
//         'name': 'Pencil',
//         'screen': Pencil(),
//         'image': 'https://m.media-amazon.com/images/I/71ohP2OPlZS._SX522_.jpg',
//       },
//       {
//         'name': 'Standard Stapler',
//         'screen': Standard_Stapler(),
//         'image': 'https://m.media-amazon.com/images/I/71nLhWIzXYL._SX522_.jpg',
//       },
//       {
//         'name': 'Sticky Notes',
//         'screen': stricky_Notes(),
//         'image': 'https://m.media-amazon.com/images/I/61YA5KjNvBL._SX522_.jpg',
//       },
//       {
//         'name': 'Binder Clips',
//         'screen': Binderclips(),
//         'image': 'https://m.media-amazon.com/images/I/71AthNdS3OL._SX522_.jpg',
//       },
//       {
//         'name': 'Diary',
//         'screen': Diaries(),
//         'image': 'https://m.media-amazon.com/images/I/31MYtwfHW7L._SX300_SY300_QL70_FMwebp_.jpg',
//       },
//       {
//         'name': 'File',
//         'screen': Files(),
//         'image': 'https://m.media-amazon.com/images/I/91mtWvwpbeL._SL1500_.jpg',
//       },
//       {
//         'name': 'Glue',
//         'screen': Glue(),
//         'image': 'https://m.media-amazon.com/images/I/31d+G3bWT2L._SX342_SY445_.jpg',
//       },
//       {
//         'name': 'Sello Tape',
//         'screen': Sellotape(),
//         'image': 'https://m.media-amazon.com/images/I/41kjeFb+yJL._SX342_SY445_.jpg',
//       },
//
//     ];
//
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Stationery Store',
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//             color: Colors.white,
//           ),
//         ),
//         backgroundColor: Colors.teal,
//         centerTitle: true, // Centers the app bar title.
//       ),
//       body: Column(
//           children: [
//       Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Row(
//         children: [
//           Expanded(
//             child: TextField(
//               controller: _searchController,
//               decoration: InputDecoration(
//                 labelText: 'Search products',
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 prefixIcon: const Icon(Icons.search),
//               ),
//             ),
//           ),
//           const SizedBox(width: 8),
//           ElevatedButton(
//             onPressed: _filterCategories,
//             style: ElevatedButton.styleFrom(
//               backgroundColor: Colors.teal,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(12),
//               ),
//             ),
//             child: const Icon(Icons.search, color: Colors.white),
//           ),
//         ],
//       ),
//     ),GridView.builder(
//         padding: const EdgeInsets.all(12),
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           crossAxisSpacing: 12,
//           mainAxisSpacing: 12,
//           childAspectRatio: 0.8, // Adjust for better fit.
//         ),
//         itemCount: categories.length,
//         itemBuilder: (context, index) {
//           final category = categories[index];
//           return GestureDetector(
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => category['screen']),
//               );
//             },
//             child: Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(15),
//                 image: DecorationImage(
//                   image: NetworkImage(category['image']),
//                   fit: BoxFit.cover,
//                 ),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.withOpacity(0.5),
//                     blurRadius: 6,
//                     spreadRadius: 2,
//                     offset: const Offset(0, 4),
//                   ),
//                 ],
//               ),
//               child: Stack(
//                 children: [
//                   // Gradient overlay for better text visibility.
//                   Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(15),
//                       gradient: LinearGradient(
//                         begin: Alignment.bottomCenter,
//                         end: Alignment.topCenter,
//                         colors: [
//                           Colors.black.withOpacity(0.6),
//                           Colors.transparent,
//                         ],
//                       ),
//                     ),
//                   ),
//                   // Product Name
//                   Align(
//                     alignment: Alignment.bottomCenter,
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text(
//                         category['name'],
//                         textAlign: TextAlign.center,
//                         style: const TextStyle(
//                           color: Colors.white,
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
