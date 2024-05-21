import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class Option2Page extends StatefulWidget {
  const Option2Page({super.key});

  @override
  State<Option2Page> createState() => _Option2PageState();
}

class _Option2PageState extends State<Option2Page> {
  File ? _selectedImage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Picker'),
      ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        ElevatedButton(onPressed: () {
          _pickImagefromGallary();
        }, child: Text('pick image from gallary')),
        ElevatedButton(onPressed: () {
          _pickImagefromCamera();
        }, child: Text('pick image from camera')),
        _selectedImage!=null? Image.file(_selectedImage!): Text('please select an image'),
      ],),
    ),  
    );
  }
  Future _pickImagefromGallary() async{
    final returnedImage=await ImagePicker().pickImage(source: ImageSource.gallery);
    if (returnedImage==null) return;
    setState(() {
      _selectedImage=File(returnedImage!.path);
    });
  }
  Future _pickImagefromCamera() async{
    final returnedImage=await ImagePicker().pickImage(source: ImageSource.camera);
    if (returnedImage==null) return;
    setState(() {
      _selectedImage=File(returnedImage!.path);
    });
  }
}
