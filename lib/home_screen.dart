import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medipro_insight/about_page.dart';
import 'package:medipro_insight/disease_selection.dart';
import 'package:medipro_insight/feedback_page.dart';
import 'package:medipro_insight/remedies_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.cyan,
        title: const Text(
          'Welcome To MEDI-PRO INSIGHT',
          style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 400,
                width: 400,
                child: Image.asset(
                  'assets/doctor_penguin.gif',
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Hello I am Doctor Penguin! How can I help you today?',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(150, 50),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const DiseaseSelection()),
                      );
                    },
                    child: const Text(
                      'Prediction',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(150, 50),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Remedies()),
                      );
                    },
                    child: const Text(
                      'Remedies',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey,
        height: 100,
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.account_circle_rounded,
                    size: 40,
                    color: Colors.white,
                  ),
                  Text(
                    'About',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ],
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutPage()), // Navigate to the AboutPage
                );
              },
            ),
            IconButton(
              icon: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.feedback,
                    size: 40,
                    color: Colors.white,
                  ),
                  Text(
                    'Feedback',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ],
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FeedbackPage()), // Navigate to the FeedbackPage
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
