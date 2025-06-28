import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PrivacyPolicyScreen(),
    );
  }
}

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0E0C1E),
      body: SafeArea(
        child: Column(
          children: [
            // Header with back button and title
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: const [
                  CircleAvatar(
                    backgroundColor: Colors.pinkAccent,
                    child: Icon(Icons.arrow_back, color: Colors.white),
                  ),
                  SizedBox(width: 12),
                  Text(
                    'Privacy Policy',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            // Center logo image
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Image.asset(
                'assets/logo.png', // Replace with your actual image
                height: 100,
              ),
            ),

            // Bullet points
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ListView(
                  children: List.generate(6, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Icon(Icons.circle, color: Colors.pinkAccent, size: 10),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                              style: TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ),
            ),

            // Bottom feedback text
            Container(
              color: const Color(0xFF0E0C1E),
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              child: RichText(
                text: const TextSpan(
                  text: 'Send us your feedback on ',
                  style: TextStyle(color: Colors.white70),
                  children: [
                    TextSpan(
                      text: 'Support@gmail.com',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
