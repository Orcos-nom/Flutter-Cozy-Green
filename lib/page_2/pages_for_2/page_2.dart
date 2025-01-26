import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: WheatInformationPage(),
  ));
}

class WheatInformationPage extends StatelessWidget {
  const WheatInformationPage({super.key});

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
                    'assets/wheat.jpeg'), // Replace with your asset image
                fit: BoxFit.cover, // Ensure the image covers the AppBar fully
              ),
            ),
          ),
          title: const Text(
            'wheat Cultivation Guide',
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
        padding: const EdgeInsets.all(16), // Add padding for better readability
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            sectionHeader('Climate Requirements:'),
            sectionText(
                'Wheat thrives in cool, temperate climates. It requires a period of cool temperatures during its early growth stages and warmer weather during maturation.'),
            const SizedBox(height: 20),
            sectionHeader('Soil:'),
            sectionText(
                'Wheat prefers well-drained soils rich in organic matter. It grows best in loamy or sandy loam soils with a pH between 6 and 7.'),
            const SizedBox(height: 20),
            sectionHeader('Planting:'),
            sectionText(
                'Wheat can be planted in September/October and harvested in June/July.'),
            const SizedBox(height: 20),
            sectionHeader('Watering:'),
            sectionText(
                'Wheat requires moderate irrigation up to 2-5 mm per day.'),
            const SizedBox(height: 20),
            sectionHeader('Nutritional Value (per 100g):'),
            sectionText(
                'Calories: Around 340-370 kcal\nCarbohydrates: 70–75 g\nProteins: 12–15 g\nFiber: 10–12 g'),
            const SizedBox(height: 20),
            sectionHeader('Steps for Wheat Planting:'),
            sectionText(
              '1. Field Preparation:\n'
              '   - Plowing: Plow the field to a depth of 15–20 cm to loosen the soil.\n'
              '   - Fertilizer Application: Incorporate well-decomposed organic manure during plowing.\n'
              '   - Leveling: Use a laser or wooden leveler to ensure even soil surface.\n\n'
              '2. Seed Selection:\n'
              '   - Use high-yielding, disease-resistant wheat varieties.\n'
              '   - Treat seeds with fungicides to prevent seed-borne diseases.\n\n'
              '3. Seed Rate and Spacing:\n'
              '   - Seed Rate: 100–125 kg/hectare for irrigated wheat.\n'
              '   - Spacing: Maintain row spacing of 20–25 cm.\n\n'
              '4. Sowing:\n'
              '   - Northern India: Late October to mid-November.\n'
              '   - Temperate Zones: Spring wheat in March–April; winter wheat in September–November.\n\n'
              '5. Irrigation:\n'
              '   - Requires 4–6 irrigations during its growth cycle (each cycle requires 200–300 mm):\n'
              '     * Crown Rooting Stage (20–25 days after sowing).\n'
              '     * Tillering Stage (40–45 days after sowing).\n'
              '     * Jointing Stage (60–65 days after sowing).\n'
              '     * Flowering Stage (75–80 days after sowing).\n'
              '     * Grain Filling Stage (90–100 days after sowing).\n\n'
              '6. Weed Management:\n'
              '   - Use pre-emergence herbicides after sowing.\n'
              '   - Perform manual or mechanical weed removal if needed.\n\n'
              '7. Fertilizer Application:\n'
              '   - Nitrogen: Apply in split doses during sowing, tillering, and flowering.\n'
              '   - Phosphorus and Potassium: Apply full dose at sowing.\n\n'
              '8. Pest and Disease Control:\n'
              '   - Common Pests: Aphids, termites.\n'
              '   - Common Diseases: Rusts (yellow, brown, black), powdery mildew.\n\n'
              '9. Monitoring and Maintenance:\n'
              '   - Regularly check crop health for signs of pests or diseases.\n'
              '   - Ensure timely irrigation during critical stages.\n\n'
              '10. Harvesting:\n'
              '   - Wheat is ready for harvest when grains become hard and golden.\n'
              '   - Moisture content should be 12–15%.\n\n'
              '11. Post-Harvest:\n'
              '   - Threshing: To separate grains from the stalk.\n'
              '   - Drying: Reduce grain moisture to below 10% for storage.\n'
              '   - Storage: Store in moisture-proof silos or bags to avoid spoilage.',
            ),
          ],
        ),
      ),
    );
  }

  Widget sectionHeader(String title) {
    return Text(
      title,
      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    );
  }

  Widget sectionText(String content) {
    return Text(
      content,
      style: const TextStyle(fontSize: 18),
    );
  }
}
