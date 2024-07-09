import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/map_screen/map_screen.dart';
import 'package:flutter_application_3/screens/second_screen/second_screen.dart';
import 'package:flutter_application_3/screens/third_screen/thirt_screen.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedTab = 0;

  static const List<Widget> _widgetOptions = <Widget> [
    MapScreen(),
    SecondScreen(),
    ThirdScreen(),
  ];

  void onSelectTab(int index) {
    if (_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: 
      _widgetOptions[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
         items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Map',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        onTap: onSelectTab,
      ),
    );
  }
}