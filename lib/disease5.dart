import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Option5Page extends StatefulWidget {
  const Option5Page({super.key});

  @override
  _Option5PageState createState() => _Option5PageState();
}

class _Option5PageState extends State<Option5Page> {
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _sexController = TextEditingController();
  final TextEditingController _cpController = TextEditingController();
  final TextEditingController _trtbpsController = TextEditingController();
  final TextEditingController _cholController = TextEditingController();
  final TextEditingController _fbsController = TextEditingController();
  final TextEditingController _restecgController = TextEditingController();
  final TextEditingController _thalachhController = TextEditingController();
  final TextEditingController _exngController = TextEditingController();
  final TextEditingController _oldpeakController = TextEditingController();
  final TextEditingController _slpController = TextEditingController();
  final TextEditingController _caaController = TextEditingController();
  final TextEditingController _thallController = TextEditingController();

  String? _prediction;

  Future<void> _predict() async {
    final uri = Uri.parse('http://10.0.2.2:5004');
    final response = await http.post(
      uri,
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        'age': _ageController.text,
        'sex': _sexController.text,
        'cp': _cpController.text,
        'trtbps': _trtbpsController.text,
        'chol': _cholController.text,
        'fbs': _fbsController.text,
        'restecg': _restecgController.text,
        'thalachh': _thalachhController.text,
        'exng': _exngController.text,
        'oldpeak': _oldpeakController.text,
        'slp': _slpController.text,
        'caa': _caaController.text,
        'thall': _thallController.text,
      }),
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = json.decode(response.body);
      setState(() {
        _prediction = responseData['result'];
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
          'Heart Attack Prediction',
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
                controller: _ageController,
                decoration: const InputDecoration(labelText: 'Age'),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: _sexController,
                decoration: const InputDecoration(labelText: 'Sex (0 for female, 1 for male)'),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: _cpController,
                decoration: const InputDecoration(labelText: 'Chest Pain Type'),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: _trtbpsController,
                decoration: const InputDecoration(labelText: 'Resting Blood Pressure (mm Hg)'),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: _cholController,
                decoration: const InputDecoration(labelText: 'Serum Cholesterol (mg/dl)'),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: _fbsController,
                decoration: const InputDecoration(labelText: 'Fasting Blood Sugar > 120 mg/dl (1 for true, 0 for false)'),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: _restecgController,
                decoration: const InputDecoration(labelText: 'Resting Electrocardiographic Results'),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: _thalachhController,
                decoration: const InputDecoration(labelText: 'Maximum Heart Rate Achieved'),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: _exngController,
                decoration: const InputDecoration(labelText: 'Exercise Induced Angina (1 for yes, 0 for no)'),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: _oldpeakController,
                decoration: const InputDecoration(labelText: 'ST Depression Induced by Exercise Relative to Rest'),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
              ),
              TextField(
                controller: _slpController,
                decoration: const InputDecoration(labelText: 'Slope of the Peak Exercise ST Segment'),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: _caaController,
                decoration: const InputDecoration(labelText: 'Number of Major Vessels (0-3) Colored by Flourosopy'),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: _thallController,
                decoration: const InputDecoration(labelText: 'Thalassemia'),
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
                  _prediction!,
                  style: const TextStyle(fontSize: 20),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
