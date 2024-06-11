import 'package:flutter/material.dart';

class HeartAttackRemedy extends StatelessWidget {
  const HeartAttackRemedy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text('Heart Attack'),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          fontSize: 25,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Image.asset('assets/heart_attack.png'),
          SizedBox(height: 100),
          Image.asset('assets/heart_attack_flow.jpg'),
        ],
      ),
    );
  }
}