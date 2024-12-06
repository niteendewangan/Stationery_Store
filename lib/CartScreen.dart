import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class CartScreen extends StatefulWidget {
  final List<CartItem> cartItems;

  const CartScreen({super.key, required this.cartItems});

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  late Razorpay _razorpay;

  // Calculate the total price of cart items
  double get totalPrice {
    return widget.cartItems.fold(
      0.0,
          (sum, item) => sum + item.price * item.quantity,
    );
  }

  // Razorpay Checkout
  void _openCheckout() {
    var options = {
      'key': 'rzp_test_TzYFgDmCea0pBE', // Replace with your Razorpay test key
      'amount': (totalPrice * 100).toInt(), // Amount in paise
      'name': 'Stationery Store',
      'description': 'Payment for items in your cart',
      'prefill': {
        'contact': '1234567890',
        'email': 'test@example.com',
      },
    };

    try {
      _razorpay.open(options);
    } catch (e) {
      debugPrint('Error: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error opening Razorpay: $e')),
      );
    }
  }

  // Handle payment success
  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Payment Successful! Payment ID: ${response.paymentId}',
        ),
      ),
    );
  }

  // Handle payment failure
  void _handlePaymentError(PaymentFailureResponse response) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Payment Failed! Error: ${response.message}'),
      ),
    );
  }

  // Handle external wallet selection
  void _handleExternalWallet(ExternalWalletResponse response) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('External Wallet Selected: ${response.walletName}'),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  @override
  void dispose() {
    _razorpay.clear(); // Clear Razorpay listeners
    super.dispose();
  }

  // Increase the quantity of an item
  void increaseQuantity(CartItem item) {
    setState(() {
      item.quantity++;
    });
  }

  // Decrease the quantity of an item
  void decreaseQuantity(CartItem item) {
    setState(() {
      if (item.quantity > 1) item.quantity--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Your Cart',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Cart items list
            Expanded(
              child: widget.cartItems.isEmpty
                  ? const Center(
                child: Text(
                  'Your cart is empty',
                  style: TextStyle(fontSize: 18),
                ),
              )
                  : ListView.builder(
                itemCount: widget.cartItems.length,
                itemBuilder: (context, index) {
                  final item = widget.cartItems[index];
                  return ListTile(
                    title: Text(item.name),
                    subtitle: Text(
                      '₹${item.price.toStringAsFixed(2)} x ${item.quantity} = ₹${(item.price * item.quantity).toStringAsFixed(2)}',
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.remove),
                          onPressed: () => decreaseQuantity(item),
                        ),
                        IconButton(
                          icon: const Icon(Icons.add),
                          onPressed: () => increaseQuantity(item),
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete, color: Colors.red),
                          onPressed: () {
                            setState(() {
                              widget.cartItems.removeAt(index);
                            });
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            // Total price display
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                'Total: ₹${totalPrice.toStringAsFixed(2)}',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Proceed to payment button
            ElevatedButton(
              onPressed: totalPrice > 0 ? _openCheckout : null,
              child: const Text('Proceed to Payment',style: TextStyle(color: Colors.white),),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
                backgroundColor: Colors.teal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CartItem {
  final String name;
  final double price;
  int quantity;

  CartItem({
    required this.name,
    required this.price,
    this.quantity = 1,
  });
}
