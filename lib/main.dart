import 'package:flutter/material.dart';
import 'splash_screen.dart';
void main() => runApp(const MultiDiseasePredictionApp());

class MultiDiseasePredictionApp extends StatelessWidget {
  const MultiDiseasePredictionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Multi-Disease Prediction',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const SplashScreen(),
    );
  }
}

