import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Option3Page extends StatefulWidget {
  const Option3Page({super.key});

  @override
  _Option3PageState createState() => _Option3PageState();
}

class _Option3PageState extends State<Option3Page> {
  File? _image;
  String? _prediction;

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  Future<void> _uploadImage(File imageFile) async {
    final uri = Uri.parse('http://10.0.2.2:5001');
    final request = http.MultipartRequest('POST', uri)
      ..files.add(await http.MultipartFile.fromPath('file', imageFile.path));

    final response = await request.send();

    if (response.statusCode == 200) {
      final responseBody = await http.Response.fromStream(response);
      final Map<String, dynamic> responseData = json.decode(responseBody.body);
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
        centerTitle: true,
        title: const Text(
          'Pneumonia Detection',
          style: TextStyle(
            color: Colors.white,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _image == null
                ? const Text('No image selected.')
                : Image.file(_image!),
            ElevatedButton(
              onPressed: _pickImage,
              child: const Text('Pick Image from Gallery'),
            ),
            if (_image != null)
              ElevatedButton(
                onPressed: () => _uploadImage(_image!),
                child: const Text('Upload and Predict'),
              ),
            if (_prediction != null)
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Prediction: $_prediction',
                  style: const TextStyle(fontSize: 20),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
