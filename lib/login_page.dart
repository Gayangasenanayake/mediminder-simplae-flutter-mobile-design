// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:medimeter/Home.dart';
import 'package:medimeter/signup.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _handleLogin() {
    // Validate the form and login the user (add your authentication logic here).
    
    // If authentication is successful, navigate to the HomePage.
    Navigator.push(context,MaterialPageRoute(builder: (context) => DashboardPage()), // Corrected line
);

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.pink,
              Colors.white,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // App Name (Title)
                const Text(
                  'Mediminder',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0, // Adjust the font size as needed
                    fontWeight: FontWeight.bold, // Make it bold for emphasis
                  ),
                ),
                const SizedBox(height: 24.0), // Add some space below the title
                
                // Email text field
                Center(
                  child: Container(
                    width: 300, // Adjust the width as needed
                    child: TextFormField(
                      controller: _emailController,
                      style: const TextStyle(color: Colors.white), // Text color
                      decoration: InputDecoration(
                        hintText: 'Enter your email',
                        hintStyle: const TextStyle(color: Colors.white70), // Hint text color
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white70), // Border color
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white), // Focused border color
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        prefixIcon: const Icon(
                          Icons.email,
                          color: Colors.white,
                        ), // Icon before the input
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),

                // Password text field
                Center(
                  child: Container(
                    width: 300, // Adjust the width as needed
                    child: TextFormField(
                      controller: _passwordController,
                      style: const TextStyle(color: Colors.white), // Text color
                      decoration: InputDecoration(
                        hintText: 'Enter your password',
                        hintStyle: const TextStyle(color: Colors.white70), // Hint text color
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white70), // Border color
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white), // Focused border color
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Colors.white,
                        ), // Icon before the input
                      ),
                      obscureText: true,
                    ),
                  ),
                ),
                const SizedBox(height: 32.0),
                // Login button
                ElevatedButton(
                  onPressed: _handleLogin,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, // Button color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: const Text('Sign In'),
                ),
                const SizedBox(height: 8.0), // Add spacing between Sign-In button and Forgot Password link

                // Forgot Password link
                InkWell(
                  onTap: () {
                    // Add the logic to handle the "Forgot Password" action
                  },
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                const SizedBox(height: 100.0),
                const Text('If you not registerd:'),ElevatedButton(onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => signUp()), // Corrected line
);
                }, child: const Text('Sign up'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
