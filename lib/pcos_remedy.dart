import 'package:flutter/material.dart';

class PCOSRemedy extends StatelessWidget {
  const PCOSRemedy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text('PCOS'),
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
          _buildSectionTitle('Natural Ways to Help Manage PCOS'),
          _buildCardContent(
            'Diet Changes',
            'Whole Foods: Emphasize fruits, vegetables, whole grains, and legumes. Avoid processed foods to help regulate hormones and blood sugar.\n\n'
            'Balance Carbs and Proteins: Opt for plant-based proteins like nuts, legumes, and whole grains. These can help improve insulin sensitivity.\n\n'
            'Anti-Inflammatory Foods: Consider the Mediterranean diet. Foods like olive oil, leafy greens, fatty fish, and nuts can help reduce inflammation.\n\n'
            'Iron-Rich Foods: For those experiencing heavy bleeding, increase iron intake with spinach, eggs, and broccoli (consult your doctor first).\n\n'
            'Magnesium-Rich Foods: Include almonds, cashews, spinach, and bananas in your diet to help manage PCOS symptoms.\n\n'
            'Fiber-Rich Foods: Improve digestion with high-fiber foods like lentils, broccoli, Brussels sprouts, and avocados.\n\n'
            'Limit Caffeine: Consider reducing coffee intake and switching to green tea, which can help with insulin resistance and weight management.',
          ),
          _buildCardContent(
            'Supplements',
            'Inositol: A B vitamin that may improve insulin resistance and fertility.\n\n'
            'Chromium: Helps stabilize insulin resistance and may improve BMI.\n\n'
            'Cinnamon: Can positively affect insulin resistance and may regulate menstruation.\n\n'
            'Turmeric: Contains curcumin, which has anti-inflammatory properties and may decrease insulin resistance.\n\n'
            'Zinc: May improve unwanted hair growth and alopecia. Found in red meat, beans, nuts, and seafood.\n\n'
            'Evening Primrose Oil: May help with period pain, irregular menstruation, and cholesterol levels.\n\n'
            'Vitamin D and Calcium: May improve irregular periods and ovulation.\n\n'
            'Cod Liver Oil: Contains vitamins D and A and omega-3 fatty acids, which can improve menstrual regularity.\n\n'
            'Berberine: May help with insulin resistance and balance endocrine responses.',
          ),
          _buildCardContent(
            'Herbs',
            'Maca Root: May balance hormones, lower cortisol levels, and help with depression.\n\n'
            'Ashwagandha: Known as “Indian ginseng,” it may balance cortisol levels and reduce stress.\n\n'
            'Holy Basil: May help reduce blood sugar, prevent weight gain, and lower cortisol levels.\n\n'
            'Licorice Root: Acts as an anti-inflammatory and helps balance hormones.\n\n'
            'Tribulus Terrestris: May stimulate ovulation and support healthy menstruation.\n\n'
            'Chasteberry: Used traditionally for reproductive conditions and may help with PMS symptoms.',
          ),
          _buildCardContent(
            'Probiotics',
            'Probiotics: Improve gut health, reduce inflammation, and help regulate sex hormones. Consider probiotic supplements or foods like kimchi and kombucha.',
          ),
          _buildCardContent(
            'Healthy Weight',
            'Maintain Healthy Weight: Gradual weight loss through a low-calorie diet can decrease insulin resistance and regulate periods.',
          ),
          _buildCardContent(
            'Regular Exercise',
            'Exercise: Aim for a balance between gentle, low-impact exercises like yoga or Pilates and high-intensity interval training. Consult your doctor for a personalized exercise plan.',
          ),
          _buildCardContent(
            'Sleep Hygiene',
            'Improve Sleep: Aim for 8-10 hours of sleep, establish a regular bedtime routine, and avoid stimulants before bed.',
          ),
          _buildCardContent(
            'Stress Management',
            'Reduce Stress: Use techniques like yoga, adequate sleep, and avoiding caffeine. Walks and self-care can also lower stress levels.',
          ),
          _buildCardContent(
            'Endocrine Disruptors',
            'Avoid Endocrine Disruptors: Limit exposure to dioxins, phthalates, pesticides, BPA, and glycol ethers often found in canned foods, soaps, and makeup.',
          ),
          _buildCardContent(
            'Acupuncture',
            'Consider Acupuncture: May help by increasing blood flow to the ovaries, reducing cortisol levels, aiding weight loss, and improving insulin sensitivity.',
          ),
          _buildCardContent(
            'Important Considerations',
            'Always discuss with your doctor before starting any alternative treatment. They can help determine the right dosage and evaluate potential side effects or interactions with other medications.\n\n'
            'Be Cautious: Be wary of treatments making large claims without sufficient research. Avoid progestin, systemic enzyme therapies, and products that promise "instant results."',
          ),
          _buildCardContent(
            'Consult Your Doctor',
            'A personalized treatment plan from your doctor is essential. Use natural treatments as a complementary approach under medical guidance.',
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
