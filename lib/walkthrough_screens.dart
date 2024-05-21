import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'disease_selection.dart';

class WalkthroughScreen1 extends StatelessWidget {
  const WalkthroughScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[400],
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(child: Image.asset('assets/image.gif')),
                const Text(
                  'Begin your proactive health journey with confidence',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const WalkthroughScreen2()),
                  );
                },
                child: const Text('Next'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class WalkthroughScreen2 extends StatelessWidget {
  const WalkthroughScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[400],
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(child: Image.asset('assets/image2.gif')),
                const Text(
                  "Prevention is better than cure—let's start today",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const WalkthroughScreen3()),
                  );
                },
                child: const Text('Next'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WalkthroughScreen3 extends StatelessWidget {
  const WalkthroughScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[400],
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(child: Image.asset('assets/image3.gif')),
                const Text(
                  'Ready to take control of your health?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const DiseaseSelection()),
                  );
                },
                child: const Text('Get Started'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/*class WalkthroughScreen1 extends StatefulWidget {
  const WalkthroughScreen1({super.key});

  @override
  State<WalkthroughScreen1> createState() => _WalkthroughScreen1State();
}

class _WalkthroughScreen1State extends State<WalkthroughScreen1> {
  File? _selectedImage;
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
}*/