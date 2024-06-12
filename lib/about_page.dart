import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About MEDI-PRO INSIGHT'),
        backgroundColor: Colors.cyan,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About MEDI-PRO INSIGHT',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'MEDI-PRO INSIGHT is a multi-disease application designed to assist users with predictions and remedies for up to six different diseases. Our goal is to provide quick and reliable information to help you manage your health better.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 24),
            Text(
              'Our Team',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'MEDI-PRO INSIGHT was developed by a dedicated team of two developers who are passionate about using technology to improve healthcare.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            Text(
              'For any inquiries or support, please feel free to contact us at:',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              'Email: medipro@gmail.com',
              style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic, color: Colors.blue),
            ),
            Spacer(),
            Center(
              child: Image.asset(
                'assets/doctor_penguin.gif',
                height: 200,
                fit: BoxFit.fitHeight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
