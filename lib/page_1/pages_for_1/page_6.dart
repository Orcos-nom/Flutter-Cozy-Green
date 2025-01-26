import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AfricanVioletInfoPage(),
  ));
}

class AfricanVioletInfoPage extends StatelessWidget {
  const AfricanVioletInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    flexibleSpace: Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage(
            'assets/africanvoilet.jpg'), // Replace with your asset image
        fit: BoxFit.cover, // Ensure the image covers the AppBar fully
      ),
    ),
  ),
  title: const Text(
    'africanvoilet Plant Guide',
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
            sectionHeader('About African Violet'),
            sectionText(
              'African Violet, a popular flowering houseplant, is known for its vibrant and colorful blooms, '
              'compact growth, and ease of care. It is native to Eastern Africa, particularly in the regions of Tanzania and Kenya.\n\n'
              'Flowers: African violets are known for their beautiful, small, and often vibrant flowers that come in a variety of colors, '
              'including purple, pink, blue, white, and lavender, with some varieties having bi-color blooms. The flowers are often five-petaled and can be single or ruffled. '
              'They can bloom throughout the year if given the right conditions, especially with proper care, making them a popular indoor plant.\n\n'
              'Leaves: The leaves of African violets are dark green or variegated (with white or silvery streaks) and are soft, fuzzy, and velvety to the touch. '
              'The leaves typically form a rosette shape, and the plant remains compact.\n\n'
              'Size: African violets are generally small plants, typically growing to around 6-8 inches (15-20 cm) in height, with some miniature varieties growing even smaller. '
              'Their compact size makes them ideal for windowsills, countertops, and small spaces.\n\n'
              'Varieties: There are numerous varieties of African violets, from standard-sized plants to miniatures and semi-miniatures. They also come in a wide range of flower types, '
              'including single, double, and ruffled blooms.',
            ),
            const SizedBox(height: 20),
            sectionHeader('Uses of African Violet'),
            sectionText(
              '1. Ornamental: Primarily grown as an indoor decorative plant, adding vibrant color and beauty to homes and offices.\n\n'
              '2. Gifts: Symbolizes love, loyalty, and friendship, often given as a thoughtful gift for various occasions.\n\n'
              '3. Symbolic: Associated with purity and spirituality in some cultures and used in religious or ceremonial settings.\n\n'
              '4. Aromatherapy: Though not widely used in essential oils, their fragrance can have a calming and relaxing effect in indoor spaces.\n\n'
              '5. Propagation Education: Used in gardening education for teaching simple propagation methods, like leaf cuttings.',
            ),
            const SizedBox(height: 20),
            sectionHeader('Steps for Planting African Violet'),
            sectionText(
              '1. Choose the Right Pot and Soil\n'
              '- Pot: Use a small pot with drainage holes to prevent root rot. Choose one that\'s slightly larger than the plant’s root ball.\n'
              '- Soil: Use well-draining, lightweight potting mix, ideally formulated for African violets, or mix regular potting soil with perlite to increase drainage.\n\n'

              '2. Prepare the Pot\n'
              '- Fill the bottom of the pot with a small layer of soil.\n'
              '- If your pot has large drainage holes, you can cover them with a piece of mesh or a coffee filter to prevent soil from spilling out.\n\n'

              '3. Remove the Plant from the Nursery Pot\n'
              '- Gently remove the African violet from its nursery pot. Hold the base of the plant, not the leaves, to avoid damaging them.\n'
              '- If the roots are compacted, gently loosen them, but be careful not to damage them.\n\n'

              '4. Place the Plant in the New Pot\n'
              '- Position the plant in the center of the new pot. The top of the root ball should be slightly below the rim of the pot.\n'
              '- Fill in the space around the roots with the potting mix, ensuring the plant is upright and the soil level stays about an inch below the rim.\n\n'

              '5. Watering\n'
              '- Water the plant thoroughly after planting, but make sure the pot drains well.\n'
              '- Avoid getting water on the leaves, as this can cause spotting or rot.\n'
              '- Keep the soil moist, but not soggy. Water when the top inch of the soil feels dry.\n\n'

              '6. Place the Plant in a Suitable Location\n'
              '- African violets prefer bright, indirect light. Place them near a window with filtered light, but avoid direct sunlight, as it can scorch the leaves.\n'
              '- They thrive in temperatures between 65°F to 75°F (18°C to 24°C).\n\n'

              '7. Fertilize\n'
              '- Once the plant begins to grow and show new leaves, you can start fertilizing with a balanced, water-soluble fertilizer every 4-6 weeks, following the manufacturer’s instructions.\n\n'

              '8. Maintain Proper Care\n'
              '- Humidity: African violets like humidity, so consider placing a humidity tray under the pot or lightly misting the plant with water.\n'
              '- Pruning: Remove dead or damaged leaves to keep the plant healthy.\n'
              '- Repotting: Repot the African violet every 1-2 years to refresh the soil and provide more space for growth.',
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
