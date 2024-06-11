import 'package:flutter/material.dart';
import 'package:medipro_insight/bt_remedy.dart';
import 'package:medipro_insight/ck_remedy.dart';
import 'package:medipro_insight/ha_remedy.dart';
import 'package:medipro_insight/m_remedy.dart';
import 'package:medipro_insight/p_remedy.dart';
import 'package:medipro_insight/pcos_remedy.dart';

class Remedies extends StatelessWidget {
  const Remedies({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        title: const Text(
          'Select the Disease for Remedies',
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 25.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BrainTumorRemedy()),
                );
              },
              child: const Text(
                'Brain Tumor',
                style: TextStyle(fontSize: 25),
                ),
            ),
            const SizedBox(height: 25.0),
            ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PneumoniaRemedy()),
              );
            },
            child: const Text(
              'Pneumonia',
              style: TextStyle(fontSize: 25),
              ),
          ),
          const SizedBox(height: 25.0),
          ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MalariaRemedy()),
            );
          },
          child: const Text(
              'Malaria',
              style: TextStyle(fontSize: 25),
              ),
            ),
          const SizedBox(height: 25.0),  
          ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ChronicKidneyRemedy()),
            );
          },
          child: const Text(
                'Chronic Kidney',
                style: TextStyle(fontSize: 25),
                ),
            ),
          const SizedBox(height: 25.0),
          ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HeartAttackRemedy()),
            );
          },
          child: const Text(
                'Heart Attack',
                style: TextStyle(fontSize: 25),
                ),
            ),
          const SizedBox(height: 25.0),
          ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PCOSRemedy()),
            );
          },
          child: const Text(
                'Polycystic Ovary Syndrome',
                style: TextStyle(fontSize: 25),
                ),
            ),
          ],
        ),
      ),
  );
  }
}
