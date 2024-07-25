import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_3/Theme/app_colors.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Аккаунт'),
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.mainAppColor,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                children: [
                  Center(
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.unselectedItemColor,
                      ),
                    ),
                  ),
                  const SizedBox(width: 64),
                  const Column(
                    children: [
                      Text(
                        'Имя Dasha',
                        style: TextStyle(color: AppColors.mainText),
                      ),
                      Text(
                        'Фамилия Pingvin',
                        style: TextStyle(color: AppColors.mainText),
                      ),
                      Text(
                        'user_name @pingvin',
                        style: TextStyle(color: AppColors.mainText),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
