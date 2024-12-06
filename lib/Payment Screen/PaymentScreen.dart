import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  final double totalAmount;

  PaymentScreen({super.key, required this.totalAmount});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Payment')),
      body: Center(
        child: Text(
          'Total Payment: \Rs ${totalAmount.toStringAsFixed(2)}',
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
