import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LilyInfoPage(),
  ));
}

class LilyInfoPage extends StatelessWidget {
  const LilyInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  flexibleSpace: Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage(
            'assets/lily.jpg'), // Replace with your asset image
        fit: BoxFit.cover, // Ensure the image covers the AppBar fully
      ),
    ),
  ),
  title: const Text(
    'lily Plant Guide',
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
            sectionHeader('About Lily'),
            sectionText(
              'The lily is a beautiful and popular flowering plant known for its large, showy blooms and sweet fragrance.\n\n'
              'Growth Habit: Lilies are herbaceous perennials that grow from underground bulbs. Most varieties range in height from 2 to 6 feet.\n\n'
              'Leaves: Narrow, lance-shaped leaves grow along the stem in an alternate or whorled arrangement. Leaves are typically green and smooth.\n\n'
              'Flowers: Large, trumpet-shaped, star-shaped, or bowl-shaped flowers. Bloom in various colors, including white, yellow, orange, pink, red, and purple, often with spots or streaks. '
              'Typically bloom in summer.\n\n'
              'Fragrance: Many species, like the Oriental lily, are highly fragrant, while others, like Asiatic lilies, have little to no scent.\n\n'
              'Bulbs: Lilies grow from scaly bulbs, which store nutrients for growth and blooming.\n\n'
              'Soil: Prefer slightly acidic to neutral soil (pH 6.0–7.0).',
            ),
            const SizedBox(height: 20),
            sectionHeader('Uses of Lily'),
            sectionText(
              '1. Symbolism: Represent purity, devotion, and renewal in many cultures and religions. White lilies are especially associated with funerals and spiritual ceremonies.\n\n'
              '2. Ornamental: Lilies are popular in gardens, floral arrangements, and bouquets.\n\n'
              '3. Fragrance: Lily oils are used in perfumes and aromatherapy.',
            ),
            const SizedBox(height: 20),
            sectionHeader('Steps to Grow Lily'),
            sectionText(
              '1. Choose the Right Lily Type\n'
              '- Asiatic Lilies: Early bloomers, vibrant colors, and no fragrance.\n'
              '- Oriental Lilies: Fragrant, large blooms, and mid-to-late summer bloomers.\n'
              '- Trumpet Lilies: Tall with long, trumpet-shaped, fragrant flowers.\n'
              '- Tiger Lilies: Hardy, with spotted orange blooms.\n\n'

              '2. Select a Planting Location\n'
              '- Sunlight: Lilies thrive in full sun (6–8 hours daily). They tolerate partial shade but may produce fewer blooms.\n'
              '- Air Circulation: Good airflow reduces the risk of fungal diseases.\n'
              '- Soil: Lilies prefer well-drained, loose soil that is slightly acidic to neutral (pH 6.0–7.0).\n\n'

              '3. Prepare the Soil\n'
              '- Test the Soil: Use a soil testing kit to check pH and nutrient levels.\n'
              '- Improve Drainage: Amend clay soils with sand, perlite, or compost to improve drainage.\n'
              '- Enrich the Soil: Add organic matter like compost or well-rotted manure to improve fertility.\n\n'

              '4. Purchase Healthy Bulbs\n'
              '- Buy bulbs from a reputable source, ensuring they are firm and free from mold, soft spots, or damage.\n'
              '- Plant the bulbs as soon as possible after purchase, preferably in early spring or fall.\n\n'

              '5. Plant the Bulbs\n'
              '- Depth and Spacing: Dig a hole 6–8 inches deep (about 3 times the height of the bulb).\n'
              '- Space bulbs 8–12 inches apart to allow room for growth.\n'
              '- Positioning: Place the bulb with the pointed end up and roots facing down.\n'
              '- Backfill and Water: Cover the bulb with soil, gently firm it down, and water thoroughly.\n\n'

              '6. Mulch the Area\n'
              '- Apply a 2–3 inch layer of organic mulch (e.g., straw or bark chips) around the base to retain moisture, suppress weeds, and regulate soil temperature.\n\n'

              '7. Watering\n'
              '- Initial Watering: Keep the soil moist after planting to help the bulbs establish roots.\n'
              '- Ongoing Care: Water deeply when the top inch of soil feels dry.\n'
              '- Avoid overwatering, as it can lead to bulb rot.\n\n'

              '8. Fertilizing\n'
              '- Initial Feeding: Apply a slow-release or balanced fertilizer (e.g., 10-10-10) when planting.\n'
              '- Ongoing Feeding: Fertilize in early spring and after blooms fade to replenish nutrients.\n'
              '- Avoid Excess Nitrogen: Too much nitrogen promotes foliage growth at the expense of flowers.\n\n'

              '9. Staking\n'
              '- Tall lilies, like Oriental and Trumpet varieties, may require stakes to support their height and heavy blooms.\n'
              '- Tie the stems gently to the stakes with soft ties.\n\n'

              '10. Deadheading and Pruning\n'
              '- Deadheading: Remove spent flowers to prevent energy from going into seed production.\n'
              '- Foliage Care: Let the leaves die back naturally after the blooming season, as they provide nutrients to the bulb for next year’s growth.\n'
              '- Cutting Back: Once the foliage has turned yellow or brown, cut the stems to ground level.\n\n'

              '11. Pest and Disease Management\n'
              '- Common Pests: Watch for aphids, lily beetles, and slugs.\n'
              '- Use insecticidal soap or neem oil as needed.\n'
              '- Diseases: Prevent fungal issues like Botrytis blight by ensuring good air circulation and avoiding overhead watering.\n'
              '- Healthy Practices: Remove infected leaves or stems promptly.\n\n'

              '12. Winter Protection\n'
              '- In Cold Climates: Apply a thick layer of mulch or straw in late fall to insulate the bulbs. Remove the mulch in spring when new growth appears.\n'
              '- In Warm Climates: Lilies typically don\'t need winter protection.\n\n'

              '13. Division and Maintenance\n'
              '- Dividing Bulbs: After 3–4 years, if lilies become overcrowded or produce fewer blooms, divide and replant the bulbs in early spring or fall.\n'
              '- Replanting: Carefully dig up the clumps, separate the bulbs, and replant them in a fresh location.',
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
