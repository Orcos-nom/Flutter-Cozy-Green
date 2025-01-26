import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: JasmineInfoPage(),
  ));
}

class JasmineInfoPage extends StatelessWidget {
  const JasmineInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(
  flexibleSpace: Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage(
            'assets/jasmine.jpg'), // Replace with your asset image
        fit: BoxFit.cover, // Ensure the image covers the AppBar fully
      ),
    ),
  ),
  title: const Text(
    'jasmine Plant Guide',
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
            sectionHeader('About Jasmine'),
            sectionText(
              'Jasmine is a popular flowering plant known for its fragrant blooms and ornamental beauty. '
              'Belonging to the genus Jasminum, it includes about 200 species of shrubs and vines that are native '
              'to tropical and subtropical regions of Eurasia, Australasia, and the Americas.\n\n'
              'Flowers: Jasmine flowers are typically small, star-shaped, and come in various colors, including white, yellow, pink, and purple. '
              'The most notable feature is their strong fragrance, which is often sweet and floral. Some species are more fragrant than others, '
              'and the scent becomes more potent in the evening.\n\n'
              'Growth Habit: \n'
              '- Vining: Many jasmine species, like Jasminum sambac (Arabian Jasmine) and Jasminum polyanthum (Pink Jasmine), are vines that can be trained to climb trellises, fences, or walls.\n'
              '- Shrub: Some species, like Jasminum officinale (Common Jasmine), can grow as shrubs and maintain a bushy appearance.\n\n'
              'Leaves: Jasmine leaves are usually green, glossy, and simple, with opposite leaf arrangement. The leaves can vary in shape, from oval to elongated, depending on the species.\n\n'
              'Growth Zones: Jasmine thrives in warm climates and requires plenty of sunlight. Some varieties are cold-hardy (e.g., Jasminum officinale), while others prefer subtropical or tropical conditions.',
            ),
            const SizedBox(height: 20),
            sectionHeader('Types of Jasmine'),
            sectionText(
              '1. Arabian Jasmine (Jasminum sambac): Known for its fragrant white flowers, it’s the national flower of the Philippines and the state flower of India. '
              'It’s commonly used in teas and perfumes.\n\n'
              '2. Common Jasmine (Jasminum officinale): A deciduous vine or shrub with sweet-smelling white flowers, it is often used in ornamental gardens.\n\n'
              '3. Pink Jasmine (Jasminum polyanthum): This type has pinkish-white flowers and is often grown as a climber. It blooms profusely in early spring and is commonly used for decorative purposes.\n\n'
              '4. Winter Jasmine (Jasminum nudiflorum): Known for its yellow flowers, this variety blooms in late winter or early spring before its leaves appear.',
            ),
            const SizedBox(height: 20),
            sectionHeader('Uses of Jasmine'),
            sectionText(
              '1. Aromatherapy: The fragrance of jasmine is used to reduce stress, anxiety, and promote relaxation, often through essential oils or diffusers.\n\n'
              '2. Perfumes: Jasmine is a key ingredient in high-end perfumes due to its sweet, floral scent.\n\n'
              '3. Culinary: Jasmine flowers are used to flavor teas (like jasmine tea) and some desserts or syrups.\n\n'
              '4. Medicinal: Jasmine is used in traditional medicine for its calming properties, as well as for skin care (moisturizing and healing).\n\n'
              '5. Ornamental: Grown as an ornamental plant for its fragrant and beautiful flowers, often in gardens or as indoor decor.\n\n'
              '6. Cultural: Jasmine symbolizes love, beauty, and purity in various cultures, used in religious ceremonies, weddings, and festivals.',
            ),
            const SizedBox(height: 20),
            sectionHeader('Steps to Plant Jasmine'),
            sectionText(
              '1. Choose the Right Jasmine Variety\n'
              '- Select the type of jasmine that suits your climate (e.g., Common Jasmine for temperate climates, Star Jasmine for warmer regions).\n\n'

              '2. Select the Planting Location\n'
              '- Sunlight: Jasmine needs full sun for at least 4-6 hours a day to thrive and bloom well.\n'
              '- Soil: Choose well-draining soil that is slightly acidic to neutral (pH 6-7). Jasmine prefers rich, loamy soil.\n'
              '- Ensure the area has good air circulation to avoid fungal diseases.\n\n'

              '3. Prepare the Soil\n'
              '- Amend the Soil: If the soil is poor, mix in compost or organic matter to improve fertility and drainage.\n'
              '- Dig the Hole: Dig a hole that is twice the size of the plant\'s root ball.\n\n'

              '4. Planting Jasmine\n'
              '- Gently remove the jasmine plant from its pot and place it in the center of the hole.\n'
              '- Position the Plant: Ensure the top of the root ball is level with the surrounding soil.\n'
              '- Fill the Hole: Backfill with soil, firm it gently around the roots to eliminate air pockets.\n\n'

              '5. Watering\n'
              '- Water the plant thoroughly after planting to settle the soil around the roots.\n'
              '- Keep the soil consistently moist, but not waterlogged, during the plant\'s establishment period.\n\n'

              '6. Mulching\n'
              '- Apply a layer of mulch (2-3 inches) around the base of the plant to retain moisture, keep roots cool, and suppress weeds.\n\n'

              '7. Support\n'
              '- If planting a climbing variety, install a trellis or support structure for the vines to grow on.\n\n'

              '8. Pruning\n'
              '- After planting, prune the jasmine lightly to remove any dead or damaged stems.\n'
              '- Regular pruning throughout the growing season helps maintain shape and encourages more blooms.\n\n'

              '9. Ongoing Care\n'
              '- Fertilize in spring and summer with a balanced fertilizer to encourage growth and flowering.\n'
              '- Water regularly, especially in hot weather, but avoid overwatering. Reduce watering in winter when the plant is dormant.',
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
