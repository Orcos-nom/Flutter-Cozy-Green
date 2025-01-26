import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AppleInfoPage(),
  ));
}

class AppleInfoPage extends StatelessWidget {
  const AppleInfoPage({super.key});

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
                    'assets/apple.jpeg'), // Replace with your asset image
                fit: BoxFit.cover, // Ensure the image covers the AppBar fully
              ),
            ),
          ),
          title: const Text(
            'Apple Cultivation Guide',
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
              'Apples are one of the most widely grown fruits in the world, valued for their '
              'nutritional content and versatility in cooking and consumption.',
            ),
            const SizedBox(height: 20),
            sectionHeader('Soil'),
            sectionText(
              'Apples thrive in well-prepared, nutrient-rich soil.',
            ),
            const SizedBox(height: 20),
            sectionHeader('Planting'),
            sectionText(
              'The best season to plant apples is June/August, and they will start giving fruit in 3-4 years.',
            ),
            const SizedBox(height: 20),
            sectionHeader('Nutritional Values (per 100g)'),
            sectionText(
              'Energy: 52 kcal\n'
              'Water: 86 g\n'
              'Carbohydrates: 13.8 g\n'
              'Sugars: 10.4 g\n'
              'Dietary Fiber: 2.4 g\n'
              'Protein: 0.3 g\n'
              'Fat: 0.2 g',
            ),
            const SizedBox(height: 20),
            sectionHeader('Benefits of Apples'),
            sectionText(
              '1. Rich in Fiber: Aids digestion, supports heart health by lowering cholesterol.\n'
              '2. Antioxidants and Immune Support: Protects against oxidative stress and supports the immune system.\n'
              '3. Heart Health: Improves cholesterol levels, regulates blood pressure, reduces inflammation.\n'
              '4. Digestive Health: Promotes regular bowel movements, prevents constipation, and supports gut health.\n'
              '5. Weight Management: Low in calories, high in water and fiber, helping to control hunger.\n'
              '6. Blood Sugar Regulation: Low glycemic index, beneficial for people with diabetes.\n'
              '7. Skin Health: Vitamin C promotes collagen production for healthy skin.\n'
              '8. Bone Health: Contains calcium, phosphorus, and boron for stronger bones.\n'
              '9. Hydration: Composed of 86% water, helps maintain hydration.',
            ),
            const SizedBox(height: 20),
            sectionHeader('Steps for Apple Planting'),
            sectionText(
              '1. Choosing the Right Apple Variety\n'
              '- Select a variety suitable for your climate and soil.\n'
              '- Consider chilling hours and pest/disease resistance.\n'
              '- Ensure cross-pollination with another compatible variety.\n\n'
              '2. Selecting a Suitable Location\n'
              '- Choose a sunny site with 6–8 hours of direct sunlight.\n'
              '- Ensure well-drained, loamy soil with a pH of 6.0–7.0.\n'
              '- Avoid low-lying areas prone to frost or waterlogging.\n\n'
              '3. Preparing the Soil\n'
              '- Test the soil and amend it with compost if necessary.\n'
              '- Till the soil to improve aeration and root penetration.\n\n'
              '4. Planting Time\n'
              '- In temperate climates, plant during late winter or early spring.\n'
              '- In tropical or subtropical regions, plant during the rainy season.\n\n'
              '5. Digging the Planting Hole\n'
              '- Dig a hole twice as wide and deep as the root ball.\n'
              '- Ensure the graft union remains above soil level.\n\n'
              '6. Planting the Tree\n'
              '- Place the tree in the hole and spread roots evenly.\n'
              '- Backfill with soil, press down gently to remove air pockets.\n'
              '- Water thoroughly to settle the soil around the roots.\n\n'
              '7. Spacing\n'
              '- Maintain spacing of 10-30 feet, depending on variety.\n\n'
              '8. Mulching\n'
              '- Apply a 2–4 inch layer of mulch around the base (avoid trunk contact).\n'
              '- Mulch retains moisture, regulates temperature, and reduces weed competition.\n\n'
              '9. Watering\n'
              '- Water regularly, especially in the first two years.\n'
              '- Avoid overwatering, which can cause root rot.\n\n'
              '10. Pruning and Training\n'
              '- Prune dead, diseased, or overcrowded branches.\n'
              '- Train the tree to develop a strong central leader or open canopy.\n\n'
              '11. Fertilization\n'
              '- Fertilize in early spring with a balanced fertilizer.\n'
              '- Avoid excessive nitrogen, which can reduce fruiting.\n\n'
              '12. Pest and Disease Management\n'
              '- Monitor for pests like codling moths and aphids.\n'
              '- Apply organic or chemical controls as necessary.\n\n'
              '13. Pollination\n'
              '- Ensure cross-pollination by planting compatible varieties.\n'
              '- Pollinators like bees are essential for fruit production.\n\n'
              '14. Harvesting\n'
              '- Harvest apples when they are mature, based on color, firmness, and flavor.\n'
              '- Varieties ripen at different times, typically from late summer to early fall.',
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
