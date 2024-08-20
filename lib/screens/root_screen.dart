import 'package:cupertino_style/screens/home/home_screen.dart';
import 'package:cupertino_style/screens/profile/profile_screen.dart';
import 'package:cupertino_style/screens/settings/settings_screen.dart';
import 'package:flutter/material.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    SettingsScreen(),
    ProfileScreen(),
  ];

  void _onTapTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E201E),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1E201E),
        title: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset(
            'assets/me.png',
            fit: BoxFit.cover,
            height: 40,
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        backgroundColor: const Color(0xFF1E201E),
        currentIndex: _currentIndex,
        onTap: _onTapTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.my_library_add,
              color: Colors.white,
            ),
            label: 'Your Library',
          ),
        ],
      ),
    );
  }
}
