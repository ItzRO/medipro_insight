import 'package:flutter/material.dart';
import 'disease1.dart';
import 'disease2.dart';
import 'disease3.dart';
import 'disease4.dart';
import 'disease5.dart';
import 'disease6.dart';
import 'disease7.dart';
import 'disease8.dart';
import 'disease9.dart';
import 'disease10.dart';


class DiseaseSelection extends StatefulWidget {
  const DiseaseSelection({super.key});

  @override
  _DiseaseSelectionState createState() => _DiseaseSelectionState();
}
class _DiseaseSelectionState extends State<DiseaseSelection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        title: const Text('Select the disease for prediction'),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 25,
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      double buttonFontSize = constraints.maxWidth * 0.05;
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: constraints.maxWidth * 0.1),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 25.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Option1Page()),
                    );
                  },
                  child:  Text(
                    'Skin Cancer',
                    style: TextStyle(fontSize: buttonFontSize),
                  ),
                ),
                const SizedBox(height: 25.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Option2Page()),
                    );
                  },
                  child: Text(
                    'Lung Cancer',
                    style: TextStyle(fontSize: buttonFontSize),
                  ),
                ),
                const SizedBox(height: 25.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Option3Page()),
                    );
                  },
                  child:  Text(
                    'Pneumonia',
                    style: TextStyle(fontSize: buttonFontSize),
                  ),
                ),
                const SizedBox(height: 25.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Option4Page()),
                    );
                  },
                  child:  Text(
                    'Brain Tumor',
                    style: TextStyle(fontSize: buttonFontSize),
                  ),
                ),
                const SizedBox(height: 25.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Option5Page()),
                    );
                  },
                  child:  Text(
                    'Diabetes',
                    style: TextStyle(fontSize: buttonFontSize),
                  ),
                ),
                const SizedBox(height: 25.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Option6Page()),
                    );
                  },
                  child:  Text(
                    'Heart Disease',
                    style: TextStyle(fontSize: buttonFontSize),
                  ),
                ),
                const SizedBox(height: 25.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Option7Page()),
                    );
                  },
                  child:  Text(
                    'Diabetic Retinopathy',
                    style: TextStyle(fontSize: buttonFontSize),
                  ),
                ),
                const SizedBox(height: 25.0),
                /*ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Option8Page()),
                    );
                  },
                  child:  Text(
                    'Option 1',
                    style: TextStyle(fontSize: buttonFontSize),
                  ),
                ),
                const SizedBox(height: 25.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Option9Page()),
                    );
                  },
                  child:  Text(
                    'Option 1',
                    style: TextStyle(fontSize: buttonFontSize),
                  ),
                ),
                const SizedBox(height: 25.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Option10Page()),
                    );
                  },
                  child:  Text(
                    'Option 1',
                    style: TextStyle(fontSize: buttonFontSize),
                  ),
                ),*/
              ],
            ),
          ),
        ),
      );
        },
      ),
    );
  }
}

