import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/account_screen/account_screen.dart';
import 'package:flutter_application_3/screens/map_screen/map_screen.dart';
import 'package:flutter_application_3/screens/news_screen/news_screen.dart';
import 'package:flutter_application_3/screens/schedule_screen/schedule_screen.dart';
import 'package:flutter_application_3/screens/settings_screen/settings_screen.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedTab = 0;

  static const List<Widget> _widgetOptions = <Widget> [
    NewsScreen(),
    MapScreen(),
    ScheduleScreen(),
    AccountScreen(),
    SettingsScreen(),
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
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedTab,
         items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper),
            label: 'Новости',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Карта',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.schedule),
            label: 'Запись',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Аккаунт',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Настройки',
          ),
        ],
        onTap: onSelectTab,
      ),
    );
  }
}

// ListView(
//   scrollDirection: Axis.horizontal,
//   children: [
              
//   ],
// )