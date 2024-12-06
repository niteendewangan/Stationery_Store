import 'package:flutter/material.dart';

import 'LogIn/login.dart';
import 'new.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(Duration(seconds: 2), () {}); // Delay for 1 seconds
    Navigator.pushReplacement(context, 
        MaterialPageRoute(builder: (context) => LoginScreen()));

    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Stationery app logo or icon
            Image.asset(
              'assets/images/logo.png',
              height: 300,
            ),
            //SizedBox(height: 20),
            // App Name
            /*Text(
              'Stationery Store',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),*/
            //SizedBox(height: 30),
            // Loading indicator
            /*CircularProgressIndicator(
              color: Colors.white,
            ),*/
          ],
        ),
      ),
    );
  }
}
