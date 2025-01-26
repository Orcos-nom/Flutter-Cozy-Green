import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: RoseInfoPage(),
  ));
}

class RoseInfoPage extends StatelessWidget {
  const RoseInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  flexibleSpace: Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage(
            'assets/rose.jpg'), // Replace with your asset image
        fit: BoxFit.cover, // Ensure the image covers the AppBar fully
      ),
    ),
  ),
  title: const Text(
    'rose Plant Guide',
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
            sectionHeader('About Rose'),
            sectionText(
              'The rose plant is a widely cultivated and admired flowering shrub known for its beauty, fragrance, and symbolic significance.\n\n'
              'Soil: Well-drained, fertile, and slightly acidic soil with a pH of 6.0–6.5 is ideal.\n\n'
              'Light: Roses require full sun for at least 6–8 hours daily.\n\n'
              'Watering: Deep watering is essential, especially during dry periods. Avoid overhead watering to prevent diseases.',
            ),
            const SizedBox(height: 20),
            sectionHeader('Uses of Rose'),
            sectionText(
              '1. Ornamental: Widely planted in gardens, parks, and landscapes for their beauty.\n\n'
              '2. Cultural and Symbolic: Roses symbolize love, beauty, and passion and are widely used in ceremonies and gifting.\n\n'
              '3. Commercial: Rose oils and perfumes are derived from rose petals. Rosewater is used in cooking, cosmetics, and religious rituals.\n\n'
              '4. Medicinal: Rosehips are valued for their antioxidants and anti-inflammatory properties.',
            ),
            const SizedBox(height: 20),
            sectionHeader('Steps to Grow Roses'),
            sectionText(
              '1. Choose the Right Type of Rose\n'
              '- Select a Rose Variety: Decide between hybrid teas, floribundas, climbers, shrub roses, or miniature roses based on your garden space and aesthetic goals.\n'
              '- Check Climate Suitability: Some roses, like certain old garden varieties, tolerate colder climates, while others thrive in warmer regions.\n\n'

              '2. Select the Location\n'
              '- Sunlight: Choose a location that receives at least 6–8 hours of direct sunlight daily.\n'
              '- Air Circulation: Ensure good airflow to reduce fungal diseases.\n'
              '- Soil: Opt for well-draining soil with a slightly acidic pH (6.0–6.5).\n\n'

              '3. Prepare the Soil\n'
              '- Test the Soil: Use a soil test kit to check pH and nutrient levels.\n'
              '- Amend the Soil: Add compost, well-rotted manure, or organic matter to enrich the soil.\n'
              '- Mix in some bone meal for phosphorus to encourage strong roots.\n\n'

              '4. Plant the Roses\n'
              '- Choose Bare-Root or Potted Roses: Bare-root roses are planted in early spring, while potted roses can be planted anytime during the growing season.\n'
              '- Dig a Planting Hole: Make a hole about 18 inches wide and deep enough for the roots to spread.\n'
              '- Position the Rose: For grafted roses, place the graft union (the bulge above the roots) just below the soil surface in cold climates and above in warm climates. For own-root roses, ensure the crown is just above ground level.\n'
              '- Fill and Water: Backfill the hole with soil, gently firm it down, and water thoroughly.\n\n'

              '5. Water Regularly\n'
              '- Water deeply 1–2 times a week, depending on the weather.\n'
              '- Avoid overhead watering to minimize fungal diseases, water at the base of the plant.\n\n'

              '6. Mulch the Base\n'
              '- Apply a 2–3 inch layer of organic mulch (like bark or straw) around the base to retain moisture, regulate soil temperature, and suppress weeds.\n'
              '- Keep the mulch a few inches away from the stem to prevent rot.\n\n'

              '7. Fertilize Properly\n'
              '- Initial Feeding: Use a balanced fertilizer after planting.\n'
              '- Regular Feeding: Fertilize every 4–6 weeks during the growing season with rose-specific fertilizers.\n'
              '- Stop feeding about 6–8 weeks before the first frost to prepare the plant for dormancy.\n\n'

              '8. Prune Regularly\n'
              '- Time: Prune roses in late winter or early spring, just before new growth begins.\n'
              '- Technique: Remove dead, damaged, or diseased wood. Cut just above an outward-facing bud at a 45-degree angle to encourage outward growth.\n'
              '- Deadhead Blooms: Remove spent flowers throughout the season to encourage continuous blooming.\n\n'

              '9. Monitor for Pests and Diseases\n'
              '- Common pests: Aphids, spider mites, and Japanese beetles.\n'
              '- Common diseases: Black spot, powdery mildew, and rust.\n'
              '- Use organic methods like neem oil or insecticidal soap for pest control and prune infected areas promptly to manage diseases.\n\n'

              '10. Winter Protection\n'
              '- In cold climates, mound soil or mulch around the base of the plant in late fall to protect against freezing. Use rose cones or burlap to shield the plant from extreme winter winds.',
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
