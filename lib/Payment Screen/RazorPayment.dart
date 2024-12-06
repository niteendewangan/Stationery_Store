import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class RazorPayment extends StatefulWidget {
  final double totalAmount;

  const RazorPayment({super.key, required this.totalAmount});

  @override
  State<RazorPayment> createState() => _RazorPaymentState();
}

class _RazorPaymentState extends State<RazorPayment> {
  late Razorpay _razorpay;

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
    _razorpay.clear();
    super.dispose();
  }

  void _openCheckout() async {
    var options = {
      'key': 'rzp_test_TzYFgDmCea0pBE',
      'amount': widget.totalAmount * 100,
      'name': 'Niteen Dewangan',
      'description': 'Stationery Purchase',
    };

    try {
      _razorpay.open(options);
    } catch (e) {
      debugPrint('Error: $e');
    }
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    Fluttertoast.showToast(
      msg: "Payment Successful! Payment ID: ${response.paymentId}",
      toastLength: Toast.LENGTH_SHORT,
    );
    Navigator.pop(context); // Navigate back after success
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    Fluttertoast.showToast(
      msg: "Payment Failed! Error: ${response.message}",
      toastLength: Toast.LENGTH_SHORT,
    );
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    Fluttertoast.showToast(
      msg: "External Wallet Selected: ${response.walletName}",
      toastLength: Toast.LENGTH_SHORT,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Razorpay Payment"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Total Amount: ₹${widget.totalAmount.toStringAsFixed(2)}",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _openCheckout,
              child: const Text("Pay Now"),
            ),
          ],
        ),
      ),
    );
  }
}
