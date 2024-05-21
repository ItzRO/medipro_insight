import 'package:flutter/material.dart';

class Option5Page extends StatelessWidget {
  const Option5Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Option 5 Details',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.lightBlue,
      ),
      body: const Center(
        child: Text('Details for Option 5'),
      ),
    );
  }
}
