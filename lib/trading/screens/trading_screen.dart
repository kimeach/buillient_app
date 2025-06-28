import 'package:flutter/material.dart';

class TradingScreen extends StatelessWidget {
  const TradingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('트레이딩')),
      body: const Center(child: Text('트레이딩 화면')),
    );
  }
}
