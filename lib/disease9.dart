import 'package:flutter/material.dart';

class Option9Page extends StatelessWidget {
  const Option9Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Option 9 Details',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.lightBlue,
      ),
      body: const Center(
        child: Text('Details for Option 9'),
      ),
    );
  }
}
