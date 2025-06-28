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
      home: AboutUsScreen(),
    );
  }
}

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0E0C1E),
      body: SafeArea(
        child: Column(
          children: [
            // Top bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Row(
                children: const [
                  CircleAvatar(
                    backgroundColor: Colors.pinkAccent,
                    child: Icon(Icons.arrow_back, color: Colors.white),
                  ),
                  SizedBox(width: 16),
                  Text(
                    "About us",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),

            // Logo
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Image.asset(
                'assets/logo.png', // Replace with your logo image
                height: 100,
              ),
            ),

            // Info Card
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade700),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Info',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry.',
                      style: TextStyle(color: Colors.white70, fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),

            // Disclaimer Card
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade700),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Disclaimer',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.\n\n'
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.\n\n'
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                      style: TextStyle(color: Colors.white70, fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),

            const Spacer(),

            // Bottom feedback
            Container(
              width: double.infinity,
              color: const Color(0xFF0E0C1E),
              padding: const EdgeInsets.symmetric(vertical: 16),
              alignment: Alignment.center,
              child: RichText(
                text: const TextSpan(
                  text: 'Send us your feedback on ',
                  style: TextStyle(color: Colors.white70, fontSize: 14),
                  children: [
                    TextSpan(
                      text: 'Support@gmail.com',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
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
