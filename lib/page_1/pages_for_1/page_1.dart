import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SunflowerInfoPage(),
  ));
}

class SunflowerInfoPage extends StatelessWidget {
  const SunflowerInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  flexibleSpace: Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage(
            'assets/sunflower.jpg'), // Replace with your asset image
        fit: BoxFit.cover, // Ensure the image covers the AppBar fully
      ),
    ),
  ),
  title: const Text(
    'Sunflower Plant Guide',
    style: TextStyle(color: Colors.white), // Set text color to white
  ),
  centerTitle: true,
),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            sectionHeader('About Sunflower'),
            sectionText(
              'The sunflower is a tall, striking, and fast-growing annual plant known for its vibrant yellow flowers and edible seeds.\n\n'
              'Soil: Loamy soil is ideal because it retains moisture while allowing proper drainage. Sunflowers thrive in neutral to slightly acidic soil with a pH between 6.0 and 7.5.\n\n'
              'Light: Sunflowers need at least 6–8 hours of direct sunlight every day. Ensure plants are spaced appropriately (12–18 inches apart) to avoid overshadowing each other.\n\n'
              'Watering:\n\n'
              '• Germination: Keep the soil moist; water daily or as needed to support sprouting.\n'
              '• Vegetative Stage: Water deeply 1–2 times a week to encourage deep roots.\n'
              '• Flowering: Maintain consistent moisture to support blooms, but avoid waterlogging.\n'
              '• Seed Formation: Reduce watering slightly as flowers mature.',
            ),
            const SizedBox(height: 20),
            sectionHeader('Uses of Sunflower'),
            sectionText(
              '• Agriculture: Cultivated for sunflower oil, a light and healthy cooking oil. Seeds are also used for snacks and as livestock feed.\n\n'
              '• Environmental: Effective for soil phytoremediation to extract toxins and heavy metals. Used as a cover crop to prevent soil erosion.\n\n'
              '• Gardening and Ornamental: Grown for their aesthetic appeal in gardens and landscapes. Often used in flower arrangements and as cut flowers.\n\n'
              '• Symbolism: Symbolize positivity, warmth, and loyalty in many cultures.',
            ),
            const SizedBox(height: 20),
            sectionHeader('Steps to Grow Sunflower'),
            sectionText(
              '1. Choose a Suitable Variety\n'
              '• Select a sunflower variety based on your space and purpose:\n'
              '  - Tall varieties for dramatic effect (Mammoth).\n'
              '  - Dwarf varieties for small gardens or containers (Teddy Bear).\n'
              '  - Multi-stemmed varieties for continuous blooms.\n\n'

              '2. Pick the Right Location\n'
              '• Sunlight: Ensure the site gets 6–8 hours of direct sunlight daily.\n'
              '• Soil: Choose well-draining, nutrient-rich soil with a pH of 6.0–7.5.\n\n'

              '3. Prepare the Soil\n'
              '• Loosen the soil to a depth of 12–18 inches.\n'
              '• Add compost or organic matter to enrich the soil.\n'
              '• Remove weeds and debris to reduce competition.\n\n'

              '4. Plant the Seeds\n'
              '• Timing: Sow seeds after the last frost when the soil has warmed to at least 50°F (10°C).\n'
              '• Depth: Plant seeds about 1 inch deep.\n'
              '• Spacing: Tall varieties: Space seeds 18–24 inches apart.\n'
              '• Smaller varieties: Space seeds 6–12 inches apart. For rows, keep 2–3 feet between rows.\n\n'

              '5. Water Regularly\n'
              '• Water immediately after planting to settle the soil.\n'
              '• Keep the soil consistently moist (but not waterlogged) until seedlings emerge.\n\n'

              '6. Thin Seedlings\n'
              '• Once seedlings are 4–6 inches tall, thin them to the recommended spacing to avoid overcrowding.\n\n'

              '7. Provide Support (Optional)\n'
              '• For tall or heavy-headed varieties, stake the plants to prevent them from bending or toppling in strong winds.\n\n'

              '8. Maintain the Plants\n'
              '• Watering: Deeply water 1–2 times per week, depending on weather.\n'
              '• Fertilizing: Use a balanced fertilizer sparingly to avoid excessive foliage growth.\n'
              '• Weeding: Keep the area weed-free to minimize competition.\n\n'

              '9. Harvest\n'
              '• For seeds: Harvest when the flower heads droop, and the back of the head turns yellow or brown.\n'
              '• For cut flowers: Harvest when the petals just begin to open.',
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
