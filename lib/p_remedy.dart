import 'package:flutter/material.dart';

class PneumoniaRemedy extends StatelessWidget {
  const PneumoniaRemedy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text('Pneumonia'),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          fontSize: 25,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Image.asset('assets/pneumonia_symptoms.jpg'),
          SizedBox(height: 100),
          Image.asset('assets/pneumonia.jpg'),
          SizedBox(height: 100),
          _buildSectionTitle('Who is most at risk of getting pneumonia?'),
          _buildCardContent(
            'You’re at an increased risk of pneumonia if you:',
            '• Are over the age of 65 and or under the age of 2.\n'
            '• Are living with a lung or heart condition. Examples include cystic fibrosis, asthma, chronic obstructive pulmonary disease, emphysema, pulmonary fibrosis or sarcoidosis.\n'
            '• Are living with a neurological condition that makes swallowing difficult. Conditions like dementia, Parkinson’s disease and stroke increase your risk of aspiration pneumonia.\n'
            '• Are in the hospital or at a long-term care facility.\n'
            '• Smoke.\n'
            '• Are pregnant.\n'
            '• Have a weakened immune system. You might have a weakened immune system if you’re on chemotherapy, are an organ transplant recipient, are living with HIV/AIDS or are taking medications that suppress your immune system.',
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
      ),
    );
  }

  Widget _buildCardContent(String title, String content) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              content,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

