import 'package:flutter/material.dart';

class BrainTumorRemedy extends StatelessWidget {
  const BrainTumorRemedy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text('Brain Tumor'),
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
          Image.asset('assets/braintumor.png'),
          _buildSectionTitle('Prevention'),
          _buildCardContent(
            'Can brain tumors be prevented?',
            'Unfortunately, you can’t prevent a brain tumor. You can reduce your risk of developing a brain tumor by avoiding environmental hazards such as smoking and excessive radiation exposure.\n\n'
            'If you have a first-degree biological relative (sibling or parent) who has been diagnosed with a brain tumor, it’s important to tell your healthcare provider. They may recommend genetic counseling to see if you have an inherited genetic syndrome that’s associated with brain tumors.',
          ),
          _buildSectionTitle('Outlook / Prognosis'),
          _buildCardContent(
            'What is the prognosis (outlook) for brain tumors?',
            'The prognosis (outlook) for people with brain tumors varies greatly. Factors that affect the prognosis include:\n\n'
            '• The tumor’s type, grade and location.\n'
            '• If the whole tumor has been surgically removed.\n'
            '• Your age and overall health.\n\n'
            'In many cases, healthcare providers can successfully treat a brain tumor. Some people live active and fulfilling lives with brain tumors that don’t cause symptoms. For some people, brain tumors can recur (return) after treatment. If this happens to you, you may need to continue treatments, including chemotherapy or radiation, to keep the tumor from growing or spreading.',
          ),
          _buildCardContent(
            'What is the survival rate for brain tumors?',
            'Survival rates are different for each type of brain tumor and vary based on your age, race and overall health. Survival rates are estimates based on averages. The five-year survival rate tells you what percent of people live at least five years after they’re diagnosed with a brain tumor. The five-year survival rates for meningioma, the most common type of benign (noncancerous) primary brain tumor, are:\n\n'
            '• Over 96% for children ages 14 and under.\n'
            '• 97% in people ages 15 to 39.\n'
            '• Over 87% in adults 40 and older.\n\n'
            'Survival rates vary widely and depend on several factors. Talk with your healthcare provider about what to expect with your diagnosis.',
          ),
          _buildSectionTitle('Living With'),
          _buildCardContent(
            'When should I see my healthcare provider about my brain tumor?',
            'If you’ve been diagnosed with a brain tumor, you’ll need to see your healthcare team regularly to receive treatment and monitor your symptoms.\n\n'
            'You should see your healthcare provider if your brain tumor symptoms get worse or you have new symptoms.\n\n'
            'Even after brain tumor treatment, you should follow up with your healthcare provider regularly.',
          ),
          _buildCardContent(
            'What questions should I ask my doctor about a brain tumor diagnosis?',
            'If you’ve been diagnosed with a brain tumor, it may be helpful to ask your healthcare provider the following questions:\n\n'
            '• Is the tumor malignant or benign?\n'
            '• What kind of tumor do I have?\n'
            '• What type of treatment is best for me?\n'
            '• Will my treatment cause side effects?\n'
            '• What type of specialists will be part of my care?\n'
            '• What’s my prognosis?\n'
            '• Are my family members at risk of developing a brain tumor?\n'
            '• Do you know of any online or in-person support groups for people with brain tumors?',
          ),
          _buildCardContent(
            'A note from Cleveland Clinic',
            'Learning you have a tumor in your brain can be scary and stressful. Not all brain tumors are cancerous, though — in fact, about two-thirds of them are benign. However, they can still cause problems for your brain. Know that your healthcare team will develop an individualized and thorough treatment plan to help treat the tumor and improve your quality of life.',
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
