import 'package:flutter/material.dart';

class Option1Page extends StatelessWidget {
  const Option1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'Option 1 Details',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.lightBlue,
      ),
      body: const Column(
        children: [
          Text('enter data'),
          TextField(
            decoration: InputDecoration(
              hintText: 'data',
            ),
          ),
        ],
      ),
    );
  }
}
