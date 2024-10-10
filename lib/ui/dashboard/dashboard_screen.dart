import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/ui/home_screen.dart';
import 'package:flutter_clean_architecture/ui/splash/splash_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _currentIndex = 0; // Current index of the selected tab

  // List of widgets to display in each tab
  final List<Widget> _pages = [
    const HomeScreen(),
    const SplashScreen(),
    const HomeScreen(),
  ];

  // Function to handle bottom navigation bar item tap
  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: _pages[_currentIndex], // Display the selected tab's widget
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex, // Set the current tab
        onTap: _onTabTapped,         // Handle tab switching
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}

