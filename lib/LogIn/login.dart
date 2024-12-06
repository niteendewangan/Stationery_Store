import 'package:flutter/material.dart';
import 'package:stationery_store/LogIn/signup_screen.dart';

import '../new.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // List of valid users
  final List<Map<String, String>> validUsers = [
    {'email': 'rupesh@gmail.com', 'password': '1234'},
    {'email': 'nitesh@gmail.com', 'password': '1234'},
    {'email': 'amit@gmail.com', 'password': '1234'},
    {'email': 'niteen@gmail.com', 'password': '1234'},
  ];

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 144, 195, 74), // Yellow
              Color.fromARGB(255, 207, 155, 138), // Red-Orange
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.0, 1.0],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Welcome Back!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 15, 14, 14),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Email Address',
                  labelStyle: const TextStyle(color: Color.fromARGB(255, 75, 75, 75)),
                  hintText: 'Enter your email',
                  prefixIcon: const Icon(Icons.email, color: Color.fromARGB(255, 78, 77, 77)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Password',
                  labelStyle: const TextStyle(color: Color.fromARGB(255, 53, 53, 53)),
                  hintText: 'Enter your password',
                  prefixIcon: const Icon(Icons.lock, color: Color.fromARGB(255, 68, 67, 67)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  bool isValidUser = validUsers.any((user) =>
                      user['email'] == _emailController.text &&
                      user['password'] == _passwordController.text);

                  if (isValidUser) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Login Failed'),
                        content: const Text('Invalid email or password.'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 171, 67, 67),
                  foregroundColor: const Color.fromARGB(255, 70, 69, 69),
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 16,color: Colors.white),
                ),
              ),
              const SizedBox(height: 15),
              GestureDetector(
                onTap: () {
                  // Navigate to the SignUpScreen
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpScreen(),
                    ),
                  );
                },
                child: const Text(
                  'Don’t have an account? Sign up',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
