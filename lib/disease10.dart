import 'package:flutter/material.dart';

class Option10Page extends StatelessWidget {
  const Option10Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Option 10 Details',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.lightBlue,
      ),
      body: const Center(
        child: Text('Details for Option 10'),
      ),
    );
  }
}
