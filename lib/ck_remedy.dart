import 'package:flutter/material.dart';

class ChronicKidneyRemedy extends StatelessWidget {
  const ChronicKidneyRemedy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text('Chronic Kidney'),
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
          Image.asset('assets/chronickidneysymptoms.jpg'),
          SizedBox(height: 100),
          Image.asset('assets/chronickidneystages.jpg'),
          SizedBox(height: 100),
          Text(
            'Chronic Kidney Prevention',
            style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
            ),
          Image.asset('assets/ckprevention.jpeg')
        ],
      ),
    );
  }
}