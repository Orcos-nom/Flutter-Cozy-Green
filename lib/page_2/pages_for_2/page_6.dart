import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TomatoInfoPage(),
  ));
}

class TomatoInfoPage extends StatelessWidget {
  const TomatoInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100), // Increase the AppBar height
        child: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/tomto.jpeg'), // Replace with your asset image
                fit: BoxFit.cover, // Ensure the image covers the AppBar fully
              ),
            ),
          ),
          title: const Text(
            'Tomato Cultivation Guide',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors
              .transparent, // Make the background transparent to show the image
          elevation: 0, // Remove AppBar shadow for a cleaner look
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            sectionHeader('Cultivation and Growth'),
            sectionText(
              'Tomatoes are one of the most widely cultivated and consumed fruits globally. '
              'Though technically a fruit (a berry), tomatoes are commonly used as a vegetable in cooking.',
            ),
            const SizedBox(height: 20),
            sectionHeader('Soil'),
            sectionText(
              'Tomatoes prefer well-drained, loamy soil rich in organic matter. '
              'They thrive in slightly acidic to neutral pH (5.5 to 7.0).',
            ),
            const SizedBox(height: 20),
            sectionHeader('Nutritional Values (per 100g)'),
            sectionText(
              'Calories: 18 kcal\n'
              'Water: 95%\n'
              'Carbohydrates: 3.9 g\n'
              'Sugars: 2.6 g\n'
              'Fiber: 1.2 g\n'
              'Protein: 0.9 g\n'
              'Fat: 0.2 g',
            ),
            const SizedBox(height: 20),
            sectionHeader('Benefits of Tomatoes'),
            sectionText(
              '1. **Rich in Antioxidants**: Contains lycopene, linked to a reduced risk of heart disease and cancers, especially in cooked tomatoes.\n'
              '2. **Heart Health**: Potassium and fiber contribute to healthy blood pressure and cholesterol levels.\n'
              '3. **Skin Health**: Vitamin C and A promote healthy skin and collagen formation.\n'
              '4. **Bone Health**: Vitamin K and calcium improve bone mineral density.\n'
              '5. **Hydration**: Composed of 95% water, aiding hydration, especially in hot weather.',
            ),
            const SizedBox(height: 20),
            sectionHeader('Steps for Tomato Planting'),
            sectionText(
              '1. Choose the Right Tomato Variety\n'
              '- Determine based on space, climate, and use.\n'
              '- Common varieties include Cherry, Roma, Beefsteak, and Heirloom.\n\n'
              '2. Select a Suitable Location\n'
              '- Ensure 6-8 hours of direct sunlight per day.\n'
              '- Space plants 18-36 inches apart, based on variety.\n'
              '- Soil and air temperature should be above 60°F (15°C).\n\n'
              '3. Prepare the Soil\n'
              '- Prefer loamy, well-drained soil. Amend with compost.\n'
              '- Maintain a soil pH of 5.5–7.0.\n'
              '- Mix in balanced fertilizers for nutrient-rich soil.\n\n'
              '4. Start Seeds Indoors\n'
              '- Sow seeds 6-8 weeks before the last frost.\n'
              '- Keep seeds at 70-80°F with adequate light.\n'
              '- Transplant seedlings when soil is warm enough.\n\n'
              '5. Transplant Seedlings\n'
              '- Plant seedlings after the last frost when soil temp is above 60°F.\n'
              '- Space seedlings 18-36 inches apart, bury up to the first leaves.\n\n'
              '6. Watering and Mulching\n'
              '- Water deeply, avoid overhead watering to prevent fungal diseases.\n'
              '- Apply 2–3 inches of mulch to conserve moisture and suppress weeds.\n\n'
              '7. Provide Support\n'
              '- Use stakes, cages, or trellises to support plant growth.\n\n'
              '8. Pruning and Managing Growth\n'
              '- Prune suckers for indeterminate varieties to promote fruiting.\n'
              '- Remove dead leaves to improve air circulation.\n\n'
              '9. Fertilize Regularly\n'
              '- Use a balanced or phosphorus-potassium-rich fertilizer.\n'
              '- Apply every 2-3 weeks during the growing season.\n\n'
              '10. Monitor for Pests and Diseases\n'
              '- Watch for aphids, hornworms, and spider mites.\n'
              '- Treat with neem oil or insecticidal soap for pests.\n'
              '- Manage diseases like blight by ensuring good airflow and removing infected plants.\n\n'
              '11. Harvesting Tomatoes\n'
              '- Harvest when tomatoes are fully ripe and slightly soft to the touch.\n'
              '- Cut tomatoes from the vine with scissors or shears.\n\n'
              '12. Storing and Using Tomatoes\n'
              '- Use fresh tomatoes immediately or store at room temp.\n'
              '- Tomatoes can be canned, frozen, or turned into sauces for long-term storage.',
            ),
          ],
        ),
      ),
    );
  }

  // Helper for section headers
  Widget sectionHeader(String text) {
    return Text(
      text,
      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    );
  }

  // Helper for section text
  Widget sectionText(String text) {
    return Text(
      text,
      style: const TextStyle(fontSize: 18),
    );
  }
}
