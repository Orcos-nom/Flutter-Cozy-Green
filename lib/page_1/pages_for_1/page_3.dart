import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: OrchidInfoPage(),
  ));
}

class OrchidInfoPage extends StatelessWidget {
  const OrchidInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  flexibleSpace: Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage(
            'assets/orchid.jpg'), // Replace with your asset image
        fit: BoxFit.cover, // Ensure the image covers the AppBar fully
      ),
    ),
  ),
  title: const Text(
    'orchid Plant Guide',
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
            sectionHeader('About Orchids'),
            sectionText(
              'Orchids are a diverse and fascinating family of flowering plants known for their exotic beauty, '
              'intricate blooms, and wide range of species.\n\n'
              'Flowers: Orchids are renowned for their stunning, often fragrant flowers. They can come in various colors, '
              'including white, pink, purple, yellow, red, and green. Some orchids have unusual shapes, such as the iconic slipper-shaped blooms.\n\n'
              'Symmetry: Orchid flowers are typically bilaterally symmetrical, with three petals and three sepals. The structure of the flowers is unique, with the lower petal often modified into a lip or labellum to attract pollinators.\n\n'
              'Roots: Orchids have specialized aerial roots that allow them to absorb moisture and nutrients from the air. These roots are often covered with a layer of velamen, a spongy tissue that helps with water absorption.\n\n'
              'Leaves: Most orchids have long, narrow, and fleshy leaves. However, the appearance can vary significantly depending on the species.\n\n'
              'Growth Forms: Orchids can be epiphytic (growing on trees), terrestrial (growing in the ground), or lithophytic (growing on rocks).',
            ),
            const SizedBox(height: 20),
            sectionHeader('Types of Orchids'),
            sectionText(
              '1. Phalaenopsis: Known as the "Moth Orchid," it\'s one of the most popular and widely grown orchids for indoor environments.\n\n'
              '2. Cattleya: Famous for its large, colorful flowers and often used in corsages.\n\n'
              '3. Dendrobium: Features delicate flowers and is grown both as a houseplant and in outdoor gardens.\n\n'
              '4. Oncidium: Often referred to as the "Dancing Lady Orchid" because of its unique flower shape.\n\n'
              '5. Vanda: Known for its bright, fragrant flowers, often seen in tropical climates.\n\n'
              '6. Paphiopedilum: Known as "Slipper Orchids" because of their distinctive slipper-shaped blooms.',
            ),
            const SizedBox(height: 20),
            sectionHeader('Steps for Planting Orchids'),
            sectionText(
              '1. Choose the Right Orchid Type\n'
              '- Before planting, make sure you select the right orchid species or hybrid for your environment. Common indoor orchids like Phalaenopsis(Moth Orchid) or Cattleya are ideal for beginners. \n'
              '- Ensure your orchid is suitable for indoor growing, or if you plan to grow it outdoors, that it’s appropriate for your local climate.\n\n'

              '2. Prepare the Pot and Orchid Mix\n'
              '- Pot: Choose a pot with drainage holes to prevent waterlogging. You can use plastic, ceramic, or clay pots, but ensure that the size of the pot is only slightly larger than the orchid’s root ball.\n'
              '- Orchid Potting Mix: Regular potting soil is not suitable for orchids. Use a well-draining orchid mix, typically made of bark, perlite, sphagnum moss, or coconut husk. Different types of orchids may require slightly different mixes, so choose one that matches your plant\'s needs (e.g., Phalaenopsis prefers bark-based mixes).\n\n'

              '3. Prepare the Orchid\n'
              '- Examine the Roots: If you’re transplanting an orchid from its old pot, gently remove it and inspect the roots. Trim off any dead, decayed, or damaged roots with sterilized scissors or pruning shears.\n'
              '- Soak the Roots (Optional): Soak the roots of your orchid in room temperature water for about 15-20 minutes before planting, especially if they seem dry. This can help rehydrate them.\n\n'

              '4. Potting the Orchid\n'
              '- Place a Layer of Potting Mix: Start by placing a layer of the orchid potting mix at the bottom of the pot. This layer should be about 1-2 inches deep, depending on the size of the orchid’s root system.\n'
              '- Position the Orchid: Place the orchid in the center of the pot, ensuring that the roots are spread out and not cramped. The base of the orchid (where the roots meet the stem) should sit just slightly below the rim of the pot.\n'
              '- Fill with Orchid Mix: Gently fill the pot with the orchid mix, working it between the roots to ensure there are no air pockets. Avoid pressing down too hard on the mix—allow it to settle naturally.\n'
              '- Stabilize the Orchid: Once the orchid is placed and the pot is filled, ensure the plant is stable and upright. You can gently tap the pot to settle the medium, but be careful not to disturb the roots too much.\n\n'

              '5. Watering After Planting\n'
              '- After planting, water your orchid thoroughly, but make sure that the water drains out of the pot completely. This helps remove any air pockets and settles the orchid mix around the roots.\n'
              '- Be careful not to leave standing water in the saucer, as this can cause root rot.\n\n'

              '6. Place the Orchid in the Right Location\n'
              '- Light: Place the potted orchid in a spot with bright, indirect light. Direct sunlight can scorch the leaves, so avoid putting your orchid in a spot where the sun will directly hit the leaves.\n'
              '- Temperature and Humidity: Orchids typically prefer temperatures between 65°F to 75°F (18°C to 24°C) and humidity levels of 40-70%. If you live in a dry climate, you may need to increase the humidity by using a humidifier or placing a water tray near the plant.\n\n'

              '7. Watering and Care Routine\n'
              '- Watering: Water your orchid once a week (or when the potting mix feels dry to the touch). Water it thoroughly until it drains out of the bottom of the pot. Be careful not to overwater, as orchids don’t like their roots to sit in water.\n'
              '- Fertilizing: Fertilize your orchid with a balanced, water-soluble orchid fertilizer once a month during the growing season (spring and summer). Avoid fertilizing during the dormant period (fall and winter).\n'
              '- Pruning: After the flowers have faded, you can trim the flower spike back. Some orchids, like Phalaenopsis, can bloom again from the same spike, while others, like Cattleyas, should have the spike cut off entirely.\n\n'

              '8. Re-potting Orchids\n'
              '- Orchids should generally be repotted every 1-2 years or when the orchid mix breaks down and becomes compact. You’ll know it’s time to repot if you notice that the orchid’s roots have outgrown the pot or the potting medium is no longer draining well.\n'
              '- Always repot after the blooming season when the plant is not actively flowering.\n\n'

              '9. Monitor for Problems\n'
              '- Pests: Keep an eye out for pests like aphids, scale insects, or mealybugs. Use organic insecticides or remove pests by hand if necessary.\n'
              '- Yellow Leaves: Yellowing leaves can indicate overwatering, too much direct sunlight, or nutrient deficiencies.\n'
              '- Wilting Flowers: After the orchid’s flowers fall off, don’t be alarmed. Orchids typically bloom once a year, but new flowers should appear the following season.',
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
