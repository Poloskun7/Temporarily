import 'package:flutter/material.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(title: const Text('Запись'),),
      body: const Center(child: 
      Text('third screen'),),
    );
  }
}