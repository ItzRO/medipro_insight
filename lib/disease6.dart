import 'package:flutter/material.dart';

class Option6Page extends StatelessWidget {
  const Option6Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Option 6 Details',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.lightBlue,
      ),
      body: const Center(
        child: Text('Details for Option 6'),
      ),
    );
  }
}
