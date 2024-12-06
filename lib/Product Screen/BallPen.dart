import 'package:flutter/material.dart';
import 'package:stationery_store/CartScreen.dart';
import '../Product Tile/product_tile.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class BallPen extends StatefulWidget {
  const BallPen({super.key});

  @override
  _BallPenState createState() => _BallPenState();
}

class _BallPenState extends State<BallPen> {
  late Razorpay _razorpay;

  @override
  void initState() {
    super.initState();
    _razorpay = Razorpay();

    // Setup Razorpay listeners
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  @override
  void dispose() {
    super.dispose();
    _razorpay.clear();
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    // Handle successful payment here
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Payment Successful!")));
    // Navigate to CartScreen or any other screen
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => CartScreen(
        cartItems: [
          CartItem(name: 'Hauser XO 0.7mm Ball Pen', price: 100),
        ],
      ),
    ));
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    // Handle payment error here
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Payment Failed: ${response.message}")),
    );
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    // Handle external wallet used for payment (if applicable)
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("External Wallet Selected")));
  }

  void _openRazorpay() {
    var options = {
      'key': 'rzp_test_TzYFgDmCea0pBE',  // Replace with your Razorpay Test API key
      'amount': 100 * 100,         // Amount in paise, ₹100 = 10000
      'name': 'Stationery Store',
      'description': 'Purchase of Ball Pen',
      'prefill': {
        'contact': '9876543210',  // Ensure this is a valid phone number
        'email': 'test@example.com', // Ensure this is a valid email
      },
      'external': {
        'wallets': ['paytm', 'googlepay']  // Optional: external wallets
      }
    };

    try {
      _razorpay.open(options);
    } catch (e) {
      print("Error: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ball Pen',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.teal,
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: [
          Image.network(
            'https://m.media-amazon.com/images/I/610ipL2vGvL._SX679_.jpg',
          ),
          const Divider(),
          ProductTile(
            name: 'Hauser XO 0.7mm Ball Pen',
            price: 100,
            onPressed: () {
              // Show confirmation message for Add to Cart
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Item added to cart!')),
              );
            },
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              '''Hauser XO 0.7mm Ball Pen Box Pack | Sleek Body & Minimalistic Design | Matt Finish & Solid Body Type | Low Viscosity Ink With Ultra Durable Tip | Blue Ink, Pack of 10 Pens \n\n 
About this item:

Package Includes - 10 N XO Ball Pen | Tip Size - 0.6 mm | Ink Color - Blue.

Hauser XO Ball Pen Gives You The Smooth Writing Experience For Comfortable Writing.

Writes Great Without Skipping, Smearing & Stuttering.

Comfortable & Ergonomic Grip For Easy Handling Of The Pen.

This Pen Is Perfect For Writing, Journaling, Note-Taking & Underlining.''',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 10,
              spreadRadius: 2,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  // Show confirmation and handle cart addition
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Item added to cart!')),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                ),
                child: const Text(
                  'Add to Cart',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: ElevatedButton(
                onPressed: _openRazorpay, // Open Razorpay checkout
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                ),
                child: const Text(
                  'Buy Now',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
