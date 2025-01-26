import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: RiceInfoPage(),
  ));
}

class RiceInfoPage extends StatelessWidget {
  const RiceInfoPage({super.key});

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
                    'assets/rice.jpeg'), // Replace with your asset image
                fit: BoxFit.cover, // Ensure the image covers the AppBar fully
              ),
            ),
          ),
          title: const Text(
            'Rice Cultivation Guide',
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
              'Rice is typically grown in flooded fields, with water flooding the fields to reduce weeds. It relies on seasonal rainfall and can be grown in hilly terrains without irrigation.',
            ),
            const SizedBox(height: 20),
            sectionHeader('Soil'),
            sectionText(
              'Rice grows best in fertile, clayey, or loamy soils with good water retention capacity.',
            ),
            const SizedBox(height: 20),
            sectionHeader('Planting'),
            sectionText(
              'Rice can be planted in April/May and harvested in November/December.',
            ),
            const SizedBox(height: 20),
            sectionHeader('Watering'),
            sectionText(
              'Rice requires irrigation up to 5-10 mm per day.',
            ),
            const SizedBox(height: 20),
            sectionHeader('Nutritional Value (per 100g)'),
            sectionText(
              'Energy: 130 kcal\n'
              'Carbohydrates: 28.2 g\n'
              'Protein: 2.7 g\n'
              'Fat: 0.3 g\n'
              'Fiber: 0.4 g\n'
              'Calcium: 10 mg',
            ),
            const SizedBox(height: 20),
            sectionHeader('Steps for Rice Planting'),
            sectionText(
              '1. Field Preparation\n'
              '- Land Clearing: Remove any debris, weeds, and previous crop residues.\n'
              '- Plowing: Plow the field to a depth of 15-20 cm to loosen the soil.\n'
              '- Leveling: Ensure uniform water distribution by leveling the field.\n'
              '- Fertilizer Application: Add organic manure and necessary fertilizers.\n\n'
              '2. Seed Selection\n'
              '- Choose certified, high-yielding varieties suited to your region (e.g., Basmati, Indica, Japonica).\n'
              '- Treat seeds with fungicides or insecticides.\n\n'
              '3. Seedling Preparation\n'
              '- Soak seeds for 24-36 hours before sowing.\n'
              '- Prepare flooded nursery beds for 25-35 days of seedling growth.\n\n'
              '4. Sowing or Transplanting\n'
              '- For Transplanted Rice: Transplant seedlings 25-35 days old with spacing of 15-25 cm.\n'
              '- For Direct Seeding: Use broadcasting or drilling techniques for uniform seed placement.\n\n'
              '5. Water Management\n'
              '- Maintain a 5-10 cm layer of water during growth.\n'
              '- Ensure proper drainage in case of excess water.\n\n'
              '6. Fertilizer Application\n'
              '- Apply Phosphorus (P) and Potassium (K) during sowing.\n'
              '- Apply Nitrogen (N) in split doses at various growth stages.\n\n'
              '7. Weed Control\n'
              '- Apply pre-emergence herbicides and use mechanical or manual weeding.\n\n'
              '8. Pest and Disease Management\n'
              '- Use insecticides for pests like weevils, stem borers, and leafhoppers.\n'
              '- Apply fungicides for diseases like blast and bacterial blight.\n\n'
              '9. Monitoring and Maintenance\n'
              '- Regularly check for nutrient deficiencies, pests, and diseases.\n'
              '- Ensure proper irrigation and water management during critical growth stages.\n\n'
              '10. Harvesting\n'
              '- Harvest when grains turn golden and moisture content is 20-25%.\n'
              '- Use manual or mechanical harvesting methods.\n\n'
              '11. Post-Harvest Handling\n'
              '- Thresh the grains using manual or mechanical threshers.\n'
              '- Dry grains to 12-14% moisture and store in cool, dry conditions.',
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
