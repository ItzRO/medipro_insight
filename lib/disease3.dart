import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:http_parser/http_parser.dart';

class Option3Page extends StatefulWidget {
  const Option3Page({super.key});

  @override
  _Option3PageState createState() => _Option3PageState();
}

class _Option3PageState extends State<Option3Page> {
  File? _image;
  String url='';
  String _prediction = '';

  Future<void> _getImageAndPredict() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
        _prediction = 'Predicting...';
      });
      List<int> ib = await pickedFile.readAsBytes();
      var res = await http.post(Uri.parse('http://127.0.0.1:5000/'),
      headers: {HttpHeaders.contentTypeHeader:'multipart/form-data'},//image/jpeg multipart/form-data
      body:ib );
      print(res.body);
      setState(() {
        _prediction =res.body.toString();
      });
    }
  }
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Brain Tumor Classification'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _image == null
                ? const  Text('No image selected.')
                : Text('No image selected.'),//Image.file(_image!),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _getImageAndPredict,
              child: const Text('Select Image and Predict'),
            ),
           const  SizedBox(height: 20),
            Text(
              'Prediction: $_prediction',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
