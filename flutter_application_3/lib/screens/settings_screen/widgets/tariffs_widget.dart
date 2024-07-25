import 'package:flutter/material.dart';

class TariffsWidget extends StatelessWidget {
  const TariffsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Тарифы'),
      ),
      body: const Center(child: Text('Деньги бумажные давайте!!!'),),
    );
  }
}