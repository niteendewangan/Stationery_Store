import 'package:flutter/material.dart';

import '../new.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  // List to store registered users
  final List<Map<String, String>> users = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 252, 200, 253), // Set solid color background here
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Create an Account!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 19, 18, 18),
                ),
              ),
              const SizedBox(height:20),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Email Address',
                  labelStyle: const TextStyle(color: Color.fromARGB(255, 78, 75, 75)),
                  hintText: 'Enter your email',
                  prefixIcon: const Icon(Icons.email, color: Color.fromARGB(255, 80, 79, 79)),
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
              const SizedBox(height: 10),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Password',
                  labelStyle: const TextStyle(color: Color.fromARGB(255, 100, 99, 99)),
                  hintText: 'Enter your password',
                  prefixIcon: const Icon(Icons.lock, color: Color.fromARGB(255, 88, 87, 87)),
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
              const SizedBox(height: 10),
              TextField(
                controller: _confirmPasswordController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Confirm Password',
                  labelStyle: const TextStyle(color: Color.fromARGB(255, 88, 87, 87)),
                  hintText: 'Confirm your password',
                  prefixIcon: const Icon(Icons.lock, color: Color.fromARGB(255, 101, 101, 101)),
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
                  String email = _emailController.text;
                  String password = _passwordController.text;
                  String confirmPassword = _confirmPasswordController.text;

                  // Check if password and confirm password match
                  if (password != confirmPassword) {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Password Mismatch'),
                        content: const Text('Passwords do not match. Please try again.'),
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
                    return;
                  }

                  // Check if email is already taken
                  if (users.any((user) => user['email'] == email)) {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Email Already Registered'),
                        content: const Text('This email is already associated with an account.'),
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
                    return;
                  }

                  // Add user to the list of registered users
                  users.add({'email': email, 'password': password});

                  // Navigate to the HomeScreen after successful signup
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 182, 199, 106),
                  foregroundColor: const Color.fromARGB(255, 173, 28, 71),
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              const SizedBox(height: 15),
              GestureDetector(
                onTap: () {
                  // Navigate back to the LoginScreen
                  Navigator.pop(context);
                },
                child: const Text(
                  'Already have an account? (LOGIN)', // Round brackets here
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromARGB(255, 111, 110, 110),
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
