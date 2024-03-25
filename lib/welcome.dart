import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:medimeter/login_page.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[200], // Set the background color to pink
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Animated text "Welcome to Mediminder"
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'Welcome to Mediminder',
                  textStyle: const TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  speed: const Duration(milliseconds: 100),
                ),
              ],
              totalRepeatCount: 1, // Play the animation once
            ),
            SizedBox(height: 20.0),
            // Animated "Get Started" button
            ElevatedButton(
              onPressed: () {
                
                // Navigate to your main app screen or another page
                Navigator.push(context,MaterialPageRoute(builder: (context) => LoginPage()), // Corrected line
                );
                },
                child: const Text('Get Start'),
            ),
          ],
        ),
      ),
    );
  }
}
