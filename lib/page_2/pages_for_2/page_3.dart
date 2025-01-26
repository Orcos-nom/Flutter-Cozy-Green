import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BananaInfoPage(),
  ));
}

class BananaInfoPage extends StatelessWidget {
  const BananaInfoPage({super.key});

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
                    'assets/banana.jpeg'), // Replace with your asset image
                fit: BoxFit.cover, // Ensure the image covers the AppBar fully
              ),
            ),
          ),
          title: const Text(
            'banana Cultivation Guide',
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
              'Bananas are one of the most popular and widely consumed fruits in the world, '
              'known for their sweet taste, rich texture, and high nutritional value.',
            ),
            const SizedBox(height: 20),
            sectionHeader('Soil'),
            sectionText(
              'Bananas require loamy or sandy loam soil. Avoid clay or heavy soils. They thrive in slightly acidic to neutral pH (5.5 – 7.0).',
            ),
            const SizedBox(height: 20),
            sectionHeader('Nutritional Values (per 100g)'),
            sectionText(
              'Energy: 89 kcal\n'
              'Water: 74.91 g\n'
              'Carbohydrates: 22.84 g\n'
              'Sugars: 12.23 g\n'
              'Dietary Fiber: 2.6 g\n'
              'Protein: 1.09 g\n'
              'Fat: 0.33 g',
            ),
            const SizedBox(height: 20),
            sectionHeader('Benefits of Bananas'),
            sectionText(
              '1. Rich in Potassium: Helps regulate blood pressure, muscle function, and fluid balance.\n'
              '2. Supports Heart Health: Potassium and fiber help lower blood pressure and improve cholesterol levels.\n'
              '3. Digestive Health: Fiber, particularly pectin, aids digestion and prevents constipation.\n'
              '4. Energy Boosting: Excellent source of carbohydrates for quick energy, perfect for pre/post-exercise.\n'
              '5. Mood Enhancement: Contains tryptophan, converted into serotonin to improve mood and reduce stress.\n'
              '6. Weight Management: Fiber promotes fullness, supporting appetite control and weight loss.',
            ),
            const SizedBox(height: 20),
            sectionHeader('Steps to Plant Bananas'),
            sectionText(
              '1. Choose the Right Location\n'
              '- Sunlight: Requires full sun (6–8 hours of direct sunlight daily).\n'
              '- Climate: Thrives in tropical conditions (78–86°F / 25–30°C). Avoid frost-prone areas.\n'
              '- Space: Space plants 8–10 feet apart.\n\n'
              '2. Prepare the Soil\n'
              '- Soil Type: Well-drained loamy or sandy loam soil rich in organic matter.\n'
              '- Soil pH: Slightly acidic to neutral (5.5–7.0).\n'
              '- Add compost or manure to enrich the soil.\n\n'
              '3. Dig the Planting Hole\n'
              '- Size: 2–3 feet deep and wide to accommodate roots.\n'
              '- Spacing: Maintain 8–10 feet between plants.\n\n'
              '4. Select a Healthy Banana Plant\n'
              '- Use a banana sucker or corm with healthy roots and free of pests/diseases.\n\n'
              '5. Plant the Banana\n'
              '- Place the sucker/corm at the same depth as it was in the previous soil.\n'
              '- Backfill and firm the soil around the plant base.\n\n'
              '6. Water the Plant\n'
              '- Water thoroughly after planting and keep the soil consistently moist (not soggy).\n\n'
              '7. Mulch Around the Base\n'
              '- Add a 2–3-inch layer of mulch to retain moisture, suppress weeds, and regulate soil temperature.\n'
              '- Keep mulch away from the trunk.\n\n'
              '8. Fertilize Regularly\n'
              '- Apply a balanced fertilizer every 6–8 weeks during the growing season.\n'
              '- Use potassium-rich fertilizers for healthy fruiting.\n\n'
              '9. Protect from Pests and Diseases\n'
              '- Monitor for pests like aphids, spider mites, and banana weevils.\n'
              '- Prevent fungal infections by ensuring good drainage and avoiding overwatering.\n\n'
              '10. Prune the Banana Plant\n'
              '- Remove dead leaves and excess suckers to focus growth on the main plant.\n\n'
              '11. Monitor for Growth and Harvest\n'
              '- Bananas take 9–12 months to mature. Harvest when fruit turns light yellow and feels firm.\n'
              '- Use a knife or machete to cut the bunch carefully.\n\n'
              '12. Maintain the Plant\n'
              '- Keep the plant healthy with regular watering, fertilizing, and pest management.\n'
              '- Allow new suckers to grow for continuous fruiting.',
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
