import 'package:flutter/material.dart';

class Option8Page extends StatelessWidget {
  const Option8Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Option 8 Details',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.lightBlue,
      ),
      body: const Center(
        child: Text('Details for Option 8'),
      ),
    );
  }
}
