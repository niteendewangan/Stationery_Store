import 'package:flutter/material.dart';

class ProductTile extends StatefulWidget {
  final String name;
  final double price;
  final VoidCallback onPressed;

  const ProductTile({
    super.key,
    required this.name,
    required this.price,
    required this.onPressed,
  });

  @override
  _ProductTileState createState() => _ProductTileState();
}

class _ProductTileState extends State<ProductTile> {
  int _quantity = 1; // Default quantity is 1

  void _incrementQuantity() {
    setState(() {
      _quantity++;
    });
  }

  void _decrementQuantity() {
    if (_quantity > 1) {
      setState(() {
        _quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double totalPrice = widget.price * _quantity;

    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: ListTile(
        title: Text(
          widget.name,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Price: ₹${widget.price.toStringAsFixed(2)}',
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Total: ₹${totalPrice.toStringAsFixed(2)}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.teal,
              ),
            ),
          ],
        ),
        trailing: Column(
          children: [
            // Row(
            //   mainAxisSize: MainAxisSize.min,
            //   children: [
            //     IconButton(
            //       icon: const Icon(Icons.remove_circle_outline),
            //       onPressed: _decrementQuantity,
            //     ),
            //     Text(
            //       '$_quantity',
            //       style: const TextStyle(
            //         fontWeight: FontWeight.bold,
            //         fontSize: 18,
            //       ),
            //     ),
            //     IconButton(
            //       icon: const Icon(Icons.add_circle_outline),
            //       onPressed: _incrementQuantity,
            //     ),
            //   ],
            // ),
            IconButton(
              icon: const Icon(Icons.add_shopping_cart),
              onPressed: widget.onPressed,
            ),
          ],
        ),
      ),
    );
  }
}
