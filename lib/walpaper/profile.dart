import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const Profile(),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0E0C1E),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: CircleAvatar(
                  backgroundColor: Colors.pinkAccent,
                  child: const Icon(Icons.arrow_back, color: Colors.white),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Profile',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              CircleAvatar(
                radius: 45,
                backgroundColor: Colors.pinkAccent,
                child: CircleAvatar(
                  radius: 42,
                  backgroundImage: AssetImage('assets/profile.jpg'), // Add your image in assets
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pinkAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 12),
                ),
                child: const Text("Login", style: TextStyle(fontSize: 16)),
              ),
              const SizedBox(height: 30),
              buildMenuItem(Icons.star, 'My wishlist'),
              buildMenuItem(Icons.info, 'About Us'),
              buildMenuItem(Icons.privacy_tip, 'Privacy policy'),
              buildMenuItem(Icons.share, 'Share'),
              buildSwitchItem(),
              buildMenuItem(Icons.phone, 'Contact Us'),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMenuItem(IconData icon, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.pinkAccent,
            child: Icon(icon, color: Colors.white, size: 20),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          const Icon(Icons.arrow_forward_ios, color: Colors.white, size: 16),
        ],
      ),
    );
  }

  Widget buildSwitchItem() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 20,
            backgroundColor: Colors.pinkAccent,
            child: Icon(Icons.color_lens, color: Colors.white, size: 20),
          ),
          const SizedBox(width: 16),
          const Expanded(
            child: Text(
              'Theme Mode',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          Switch(
            value: true,
            onChanged: (bool value) {},
            activeColor: Colors.pinkAccent,
          ),
        ],
      ),
    );
  }
}
