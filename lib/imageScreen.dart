/*import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:tflite_flutter/tflite_flutter.dart';
import 'package:image/image.dart' as img;
import 'dart:math';
import 'dart:io';



class ImageScreen extends StatefulWidget {
  const ImageScreen({Key? key}) : super(key: key);

  @override
  _ImageScreenState createState() => _ImageScreenState();
}
class _ImageScreenState extends State<ImageScreen> {

  var imgFile;
  String Image_Path= "";



  Future<String> pickImage() async {
      // Function body
      // Add a return statement at the end
      PermissionStatus status = await Permission.storage.request();

      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['jpg', 'jpeg', 'png'],
      );

      if (result != null) {
        imgFile = result.files.single;
        print("Image file path: " + imgFile.path);
        Image_Path=imgFile.path;
        print("picked image");
        return Image_Path;
      } else {
        // User canceled the picker
        print("Error");
        return "Error";
      }
  }



//LOAD MODEL WORKS


  Interpreter? interpreter;
  Future<void> loadModel(String modelPath) async {
  try {
    interpreter = await Interpreter.fromAsset(modelPath);
    print('Loaded model successfully');

    // Get input and output shapes
    if (interpreter != null) {
      var inputShape = interpreter!.getInputTensor(0).shape;
      var outputShape = interpreter!.getOutputTensor(0).shape;

      print('Input shape: $inputShape');
      print('Output shape: $outputShape');
      
      //I/flutter (10135): Input shape: [1, 256, 256, 3]
      //I/flutter (10135): Output shape: [1, 4]

    }
  } catch (e) {
    print('Failed to load model: $e');
  }
}


Future<List> runModel(String imagePath) async {
  // Load the image
  var image = img.decodeImage(File(imagePath).readAsBytesSync());
  var resized = img.copyResize(image!, width: 256, height: 256);

  // Convert image to a list of floats
  var input = resized.getBytes().buffer.asFloat32List().reshape([49152]);

  // Create output tensor
  var output = List<double>.filled(4,0).reshape([1,4]);//try filled(4.0), reshape([1,4])

  // Check if interpreter is null
if (interpreter == null) {
  print('Interpreter is null');
  //return;
}

// Print input and output shapes
print('Input shape: ${input.shape}');
print('Output shape: ${output.shape}');

// Print input data
print('Input data: $input');

// Run the model
interpreter?.run(input, output);

  print("ok running model");
  return output;
}


Future<String> makePredictions(String imagePath) async {
  // Load and run the 4-class model
  await loadModel('assets/models/four_class_STFT_80valacc.tflite');
  var prediction_4class = await runModel(imagePath);

  String result = '';

  // Convert List<dynamic> to List<double>
  List<double> prediction_4class_double = prediction_4class.cast<double>();


  // Find the index of the maximum value in prediction_4class
  int maxIndex = prediction_4class.indexWhere((d) => d == prediction_4class_double.reduce(max));

  // Based on the result, load and run the appropriate binary model
  if (maxIndex == 0) {
    print("ok 1");
    result = 'Normal';
  } else if (maxIndex == 1) {
    // Asthma
    await loadModel('assets/models/NvsA.tflite');
    print("ok 1");
    var prediction_binary = await runModel(imagePath);
    result = 'Asthma with confidence ${prediction_binary[0]}';
  } else if (maxIndex == 2) {
    // Pneumonia
    print("ok 1");
    await loadModel('assets/models/NvsP.tflite');
    var prediction_binary = await runModel(imagePath);
    result = 'Pneumonia with confidence ${prediction_binary[0]}';
  } else if (maxIndex == 3) {
    // COPD
    print("ok 1");
    await loadModel('assets/models/NvsC_best.tflite');
    var prediction_binary = await runModel(imagePath);
    result = 'COPD with confidence ${prediction_binary[0]}';
  }

  return result;
}



  //Remove this if causing errors
 /*
  @override
  void initState() {
    super.initState();
    loadModel(Image_Path).then((value) {setState((){});});
  }*/



  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.white,
      appBar:AppBar(
        elevation: 0,
        title:const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Ausculto",
                          style:
                          TextStyle(color: Color.fromARGB(221, 7, 173, 224), fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Wave",
                          style: TextStyle(color: Color.fromARGB(255, 248, 213, 16), fontWeight: FontWeight.w600),
                        ),
                        Text("       "),//balances out, maintains center, use better methods later
                      ],
                    ),centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),

      body:Center(
        child:Container(
          width: 200,
          height: 250,
          child:ListView(
            children: [
              const Text(
                    " Results:",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: Colors.black),
              ),
              const SizedBox(height: 20,),
              
              //FOR TESTING ONLY: 
              
              Container(
                width:200,
                child:ElevatedButton(
                onPressed: () async{
                  //ability to add an image 
                  String? imagePath = await pickImage();
                  if (imagePath != null) {
                    // Run the model on the image
                    String result = await makePredictions(imagePath);

                  // Display the result in a dialog
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Prediction'),
                        content: Text(result),
                        actions: <Widget>[
                          TextButton(
                            child: Text('Close'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                  }
                },
                //change color of elevated button here
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
                child: const Text('Add Test Image',style: TextStyle(fontSize: 13),),
              ),
              ),
              const SizedBox(height: 20,),
              
            ],
          ),
        ),
      ),
    );

    
  }
}*/