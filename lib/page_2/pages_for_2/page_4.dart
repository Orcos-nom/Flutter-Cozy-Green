import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: PomegranateInfoPage(),
  ));
}

class PomegranateInfoPage extends StatelessWidget {
  const PomegranateInfoPage({super.key});

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
                    'assets/pormi.jpeg'), // Replace with your asset image
                fit: BoxFit.cover, // Ensure the image covers the AppBar fully
              ),
            ),
          ),
          title: const Text(
            'Pomegranate Cultivation Guide',
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
              'Pomegranates (Punica granatum) are ancient fruits known for their health benefits and unique flavor. '
              'Native to the Middle East and South Asia.',
            ),
            const SizedBox(height: 20),
            sectionHeader('Soil'),
            sectionText(
              'Well-drained, sandy, or loamy soil with a pH of 5.5 to 7.0. Pomegranates are tolerant of slightly saline soils.',
            ),
            const SizedBox(height: 20),
            sectionHeader('Planting'),
            sectionText(
              'Pomegranates can be planted around March/April.',
            ),
            const SizedBox(height: 20),
            sectionHeader('Nutritional Values (per 100g)'),
            sectionText(
              'Energy: 83 kcal\nWater: 77.9 g\nCarbohydrates: 18.7 g\nSugars: 16.3 g\nDietary Fiber: 4 g\nProtein: 1.7 g\nFat: 1.2 g',
            ),
            const SizedBox(height: 20),
            sectionHeader('Benefits of Pomegranates'),
            sectionText(
              '1. Rich in Antioxidants: High in polyphenols like anthocyanins and tannins, protecting the body from oxidative stress and inflammation.\n'
              '2. Heart Health: May lower blood pressure and reduce cholesterol, promoting cardiovascular health.\n'
              '3. Anti-Cancer Properties: May have anti-cancer effects, particularly against breast and prostate cancers.\n'
              '4. Improves Digestion: Fiber supports digestive health and regulates bowel movements.\n'
              '5. Boosts Immunity: High vitamin C content supports immunity and aids in wound healing.\n'
              '6. Anti-Aging Effects: Antioxidants prevent skin aging by reducing wrinkles and promoting collagen production.',
            ),
            const SizedBox(height: 20),
            sectionHeader('Steps for Planting Pomegranates'),
            sectionText(
              '1. Choose the Right Location\n'
              '- Sunlight: Requires 6–8 hours of direct sunlight daily.\n'
              '- Climate: Thrives in warm, dry climates. Ideal temperatures are 70–85°F (21–29°C). Tolerant of drought but not frost.\n'
              '- Soil: Prefers well-drained, sandy, or loamy soil with a pH of 5.5 to 7.0.\n\n'
              '2. Prepare the Soil\n'
              '- Clear the Area: Remove weeds, rocks, and debris.\n'
              '- Test the Soil: Adjust pH and fertility as needed.\n'
              '- Improve Drainage: Add sand or compost to poorly drained soils.\n\n'
              '3. Choose the Right Time for Planting\n'
              '- Best Time: Spring (March/April) or during the rainy season in tropical regions.\n'
              '- Mediterranean climates: Plant in fall (September/October).\n\n'
              '4. Dig the Planting Hole\n'
              '- Size: 2–3 times the size of the root ball.\n'
              '- Depth: Ensure the root collar is level with or above the soil surface.\n\n'
              '5. Plant the Pomegranate Tree\n'
              '- Remove from Pot: Gently take the tree out to avoid damaging the roots.\n'
              '- Place in Hole: Center the tree and spread roots naturally.\n'
              '- Fill the Hole: Backfill with soil, firming gently to avoid air pockets.\n\n'
              '6. Water Thoroughly\n'
              '- First Watering: Water immediately after planting.\n'
              '- Regular Watering: Keep soil moist initially; established trees are drought-tolerant.\n\n'
              '7. Apply Mulch\n'
              '- Layer: Add 2–3 inches of mulch around the base (keep it away from the trunk).\n'
              '- Benefits: Retains moisture, suppresses weeds, and regulates soil temperature.\n\n'
              '8. Provide Support\n'
              '- Stake young trees in windy areas with soft ties.\n'
              '- Adjust staking as the tree grows.\n\n'
              '9. Fertilize\n'
              '- First Fertilization: 4–6 weeks after planting.\n'
              '- Fertilizer: Use a balanced 10-10-10 fertilizer.\n'
              '- Regular Feeding: Fertilize once a year during the growing season.\n\n'
              '10. Prune the Tree\n'
              '- First Pruning: Remove dead, damaged, or diseased branches.\n'
              '- Shape the Tree: Prune after the first 1–2 years to improve airflow.\n\n'
              '11. Protect from Pests and Diseases\n'
              '- Pests: Watch for aphids, whiteflies, and mealybugs.\n'
              '- Diseases: Prevent fungal infections by ensuring good drainage and airflow.\n\n'
              '12. Harvesting\n'
              '- Maturity: 5–7 months after flowering (fall: September–November).\n'
              '- Harvest when the fruit turns deep red, the skin cracks, and it feels heavy for its size.',
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
