import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Option1Page extends StatefulWidget {
  const Option1Page({super.key});

  @override
  _Option1PageState createState() => _Option1PageState();
}

class _Option1PageState extends State<Option1Page> {
  final TextEditingController _bpController = TextEditingController();
  final TextEditingController _sgController = TextEditingController();
  final TextEditingController _alController = TextEditingController();
  final TextEditingController _suController = TextEditingController();
  final TextEditingController _rbcController = TextEditingController();
  final TextEditingController _buController = TextEditingController();
  final TextEditingController _scController = TextEditingController();
  final TextEditingController _sodController = TextEditingController();
  final TextEditingController _potController = TextEditingController();
  final TextEditingController _hemoController = TextEditingController();
  final TextEditingController _wbccController = TextEditingController();
  final TextEditingController _rbccController = TextEditingController();
  final TextEditingController _htnController = TextEditingController();

  String? _prediction;

  Future<void> _predict() async {
    final uri = Uri.parse('http://10.0.2.2:5003');
    final response = await http.post(
      uri,
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        'Bp': _bpController.text,
        'Sg': _sgController.text,
        'Al': _alController.text,
        'Su': _suController.text,
        'Rbc': _rbcController.text,
        'Bu': _buController.text,
        'Sc': _scController.text,
        'Sod': _sodController.text,
        'Pot': _potController.text,
        'Hemo': _hemoController.text,
        'Wbcc': _wbccController.text,
        'Rbcc': _rbccController.text,
        'Htn': _htnController.text,
      }),
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = json.decode(response.body);
      setState(() {
        _prediction = responseData['prediction'];
      });
    } else {
      setState(() {
        _prediction = 'Failed to get prediction';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Chronic Kidney Detection',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.lightBlue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: _bpController,
                decoration: const InputDecoration(labelText: 'Blood Pressure'),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: _sgController,
                decoration: const InputDecoration(labelText: 'Specific Gravity'),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: _alController,
                decoration: const InputDecoration(labelText: 'Albumin'),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: _suController,
                decoration: const InputDecoration(labelText: 'Sugar'),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: _rbcController,
                decoration: const InputDecoration(labelText: 'Red Blood Cells'),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: _buController,
                decoration: const InputDecoration(labelText: 'Blood Urea'),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: _scController,
                decoration: const InputDecoration(labelText: 'Serum Creatinine'),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: _sodController,
                decoration: const InputDecoration(labelText: 'Sodium'),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: _potController,
                decoration: const InputDecoration(labelText: 'Potassium'),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: _hemoController,
                decoration: const InputDecoration(labelText: 'Hemoglobin'),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: _wbccController,
                decoration: const InputDecoration(labelText: 'White Blood Cell Count'),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: _rbccController,
                decoration: const InputDecoration(labelText: 'Red Blood Cell Count'),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: _htnController,
                decoration: const InputDecoration(labelText: 'Hypertension'),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _predict,
                child: const Text('Predict'),
              ),
              const SizedBox(height: 20),
              if (_prediction != null)
                Text(
                  'Prediction: $_prediction',
                  style: const TextStyle(fontSize: 20),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
