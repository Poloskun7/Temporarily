import 'package:flutter/material.dart';
import 'package:flutter_application_3/Theme/app_colors.dart';
import 'package:flutter_application_3/screens/auth_screen/auth_widget.dart';

void main() {
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
        radioTheme: RadioThemeData(
          fillColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              if (!states.contains(MaterialState.selected)) {
                return AppColors.mainText; // Цвет ободка неактивной RadioListTile
              }
              return null; // Использует цвет по умолчанию для активного состояния
            },
          ),
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