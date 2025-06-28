import 'package:flutter/material.dart';

void main() {
  runApp(const HDWallpaperApp());
}

class HDWallpaperApp extends StatelessWidget {
  const HDWallpaperApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WallpaperHomePage(),
    );
  }
}

class WallpaperHomePage extends StatefulWidget {
  const WallpaperHomePage({super.key});

  @override
  State<WallpaperHomePage> createState() => _WallpaperHomePageState();
}

class _WallpaperHomePageState extends State<WallpaperHomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedIndex = 1;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this, initialIndex: 1);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Widget _buildCategoryItem(String title, String imagePath) {
    return Stack(
      children: [
        Image.asset(
          imagePath,
          width: double.infinity,
          height: 160,
          fit: BoxFit.cover,
        ),
        Container(
          width: double.infinity,
          height: 160,
          color: Colors.black.withOpacity(0.3),
          alignment: Alignment.center,
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 1,
      child: Scaffold(
        backgroundColor: const Color(0xFF0E0E1C),
        appBar: AppBar(
          backgroundColor: const Color(0xFF0E0E1C),
          title: const Text(
            'HD Wallpaper',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          centerTitle: true,
          bottom: TabBar(
            controller: _tabController,
            indicatorColor: Colors.white,
            indicatorWeight: 3,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            tabs: const [
              Tab(text: 'HOME'),
              Tab(text: 'CATEGORIES'),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            const Center(child: Text("Home Content", style: TextStyle(color: Colors.white))),
            ListView(
              children: [
                _buildCategoryItem('Animals', 'assets/fox.jpg'),
                _buildCategoryItem('Fashion & Beauty', 'assets/fashion.jpg'),
                _buildCategoryItem('Car & Vehicle', 'assets/bike.jpg'),
                _buildCategoryItem('Natures', 'assets/nature.jpg'),
              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color(0xFF0E0E1C),
          selectedItemColor: Colors.pinkAccent,
          unselectedItemColor: Colors.white,
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
