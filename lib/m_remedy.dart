import 'package:flutter/material.dart';

class MalariaRemedy extends StatelessWidget {
  const MalariaRemedy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text('Malaria'),
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
          Image.asset('assets/malaria1.jpg'),
          SizedBox(height: 100),
          Image.asset('assets/malaria2.jpg'),
        ],
      ),
    );
  }
}