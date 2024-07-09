import 'package:flutter/material.dart';
import 'package:flutter_application_3/Theme/app_colors.dart';
import 'package:flutter_application_3/json_file.dart';
import 'package:flutter_application_3/screens/auth_screen/auth_widget.dart';
import 'package:flutter_application_3/screens/map_screen/map_screen.dart';

void main() {
  fetchRestList();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});
  
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.mainAppColor,
          foregroundColor: AppColors.mainText,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: AppColors.mainAppColor,
          selectedItemColor: AppColors.selectedItemColor,
          unselectedItemColor: AppColors.unselectedItemColor,
        ),
      ),
      home: const AuthWidget(),
    );
  }
}