import 'package:flutter/material.dart';
import 'package:testing/walpaper/privacy%20policy.dart';

import 'about us.dart';
import 'contact us.dart';

// Import screen files if separated (you can keep all in one file for now)
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}

// ------------------------ Profile Screen ------------------------

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isDarkMode = false;
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F0F1E),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0F0F1E),
        elevation: 0,
        leading: Container(
          margin: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
            color: Color(0xFFE91E63),
            shape: BoxShape.circle,
          ),
          child: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        centerTitle: true,
        title: const Text(
          "Profile",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.pink,
                child: const CircleAvatar(
                  radius: 46,
                  backgroundImage: AssetImage('assets/images/OIP.jpeg'),
                ),
              ),
              Positioned(
                bottom: 4,
                right: 4,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.edit, size: 16, color: Colors.pink),
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          const Text(
            "Tom Roberts",
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
          ),
          const Text(
            "tomroberts123@gmail.com",
            style: TextStyle(color: Colors.white70, fontSize: 14),
          ),
          const Text(
            "+44 989 6666",
            style: TextStyle(color: Colors.white70, fontSize: 14),
          ),
          const SizedBox(height: 30),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              children: [
                _buildListItem(Icons.star, "My wishlist", () {}),
                _buildListItem(Icons.info, "About Us", () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const AboutUsScreen()),
                  );
                }),
                _buildListItem(Icons.privacy_tip, "Privacy policy", () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const PrivacyPolicyScreen()),
                  );
                }),
                _buildListItem(Icons.share, "Share", () {}),
                _buildThemeSwitcher(),
                _buildListItem(Icons.phone, "Contact Us", () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => ContactUsApp()),
                  );
                }),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFE91E63),
                minimumSize: const Size.fromHeight(50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: _isLoading ? null : _handleLogout,
              child: _isLoading
                  ? const SizedBox(
                height: 24,
                width: 24,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                  strokeWidth: 3,
                ),
              )
                  : const Text(
                "Logout",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildListItem(IconData icon, String text, VoidCallback onTap) {
    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          color: Color(0xFFE91E63),
          shape: BoxShape.circle,
        ),
        child: Icon(icon, color: Colors.white, size: 20),
      ),
      title: Text(
        text,
        style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.white),
      onTap: onTap,
    );
  }

  Widget _buildThemeSwitcher() {
    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          color: Color(0xFFE91E63),
          shape: BoxShape.circle,
        ),
        child: const Icon(Icons.brightness_6, color: Colors.white, size: 20),
      ),
      title: const Text(
        "Theme Mode",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      trailing: Switch(
        value: isDarkMode,
        activeColor: Colors.pink,
        onChanged: (value) {
          setState(() {
            isDarkMode = value;
          });
        },
      ),
    );
  }

  void _handleLogout() async {
    setState(() {
      _isLoading = true;
    });

    await Future.delayed(const Duration(seconds: 2));

    setState(() {
      _isLoading = false;
    });

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("Logged out successfully")),
    );
  }
}
