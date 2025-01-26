import 'package:flutter/material.dart';
import 'product_page.dart';
import 'cart_page.dart';
import 'product_model.dart';

class ECommercePage extends StatefulWidget {
  const ECommercePage({super.key});

  @override
  State<ECommercePage> createState() => _ECommercePageState();
}

class _ECommercePageState extends State<ECommercePage> {
  final List<Product> products = [
    Product(
      id: '1',
      name: 'Garden Trowel',
      imageUrl: 'assets/garden_trowel.jpg',
      price: 1500.00,
      category: 'Garden Tools',
      description: 'A hand trowel is a small, versatile garden tool designed for digging, planting, and transferring soil. It features a pointed metal blade and a comfortable handle, making it ideal for tasks such as transplanting flowers, digging small holes, or loosening soil. This essential tool comes in various sizes, typically made from stainless steel or carbon steel for durability.',
      inStock: true,
      rating: 4.5,
    ),
    Product(
      id: '2',
      name: 'Pruning Shears',
      imageUrl: 'assets/Pruning_Shears.jpg',
      price: 2000.00,
      category: 'Garden Tools',
      description: 'Pruning shears, also known as garden shears or secateurs, are essential for trimming and shaping plants. They have sharp, precise blades that can easily cut through small branches, stems, and leaves. Pruning shears are designed to make clean, efficient cuts, helping to maintain healthy plant growth. They are an essential tool for trimming bushes, cutting back dead or diseased plants, and managing overgrown greenery.',
      inStock: true,
      rating: 4.7,
    ),
    Product(
      id: '3',
      name: 'Garden Gloves',
      imageUrl: 'assets/glooves.jpg',
      price: 1200.00,
      category: 'Garden Accessories',
      description: 'Garden gloves protect your hands while gardening, preventing cuts, scratches, and contact with harmful chemicals or thorny plants. Made from materials such as cotton, leather, or rubber, these gloves offer comfort and durability. They come in various sizes and types, including lightweight gloves for general gardening tasks and thicker, more protective gloves for handling rough or thorny plants.',
      inStock: true,
      rating: 4.8,
    ),
    Product(
      id: '4',
      name: 'Watering Can',
      imageUrl: 'assets/Watering_Can.jpg',
      price: 1500.00,
      category: 'Watering Equipment',
      description: 'A watering can is a container used to water plants. It is typically made of plastic or metal and has a long spout to direct water precisely where needed. It comes in various sizes and designs, from small handheld cans for indoor plants to large capacity cans for garden beds. Watering cans often feature a detachable spout or a rose (the perforated head) to control the flow of water.',
      inStock: true,
      rating: 4.2,
       ),
    Product(
      id: '5',
      name: 'Garden Fork',
      imageUrl: 'assets/Garden_Fork.jpg',
      price: 1500.00,
      category: 'Soil & Fertilizers',
      description: 'A watering can is a container used to water plants. It is typically made of plastic or metal and has a long spout to direct water precisely where needed. It comes in various sizes and designs, from small handheld cans for indoor plants to large capacity cans for garden beds. Watering cans often feature a detachable spout or a rose (the perforated head) to control the flow of water.',
      inStock: true,
      rating: 4.6,  // Added rating
    ),
    Product(
      id: '6',
      name: 'Shovel',
      imageUrl: 'assets/showel.jpg',
      price: 2000.00,
      category: 'Soil & Fertilizers',
      description: 'A spade or shovel is a tool used for digging, edging, and transferring soil or plants. Spades have flat blades and are ideal for cutting through soil with a clean edge, while shovels tend to have a more rounded, deeper blade for scooping and lifting. These tools are essential for planting, soil preparation, and landscaping.',
      inStock: true,
      rating: 4.6,  // Added rating
    ),
    Product(
      id: '7',
      name: 'Wheelbarrow',
      imageUrl: 'assets/Wheelbarrow.jpg',
      price: 6000.00,
      category: 'Soil & Fertilizers',
      description: 'A spade or shovel is a tool used for digging, edging, and transferring soil or plants. Spades have flat blades and are ideal for cutting through soil with a clean edge, while shovels tend to have a more rounded, deeper blade for scooping and lifting. These tools are essential for planting, soil preparation, and landscaping.',
      inStock: true,
      rating: 4.6,  // Added rating
    ),
    Product(
      id: '8',
      name: 'Rake',
      imageUrl: 'assets/rakes.jpg',
      price: 1500.00,
      category: 'Soil & Fertilizers',
      description: 'A rake is a garden tool used for gathering leaves, grass clippings, and other debris, as well as leveling soil or mulch. It features a long handle with a wide head of evenly spaced tines or teeth. Rakes are essential for maintaining a neat garden, ensuring that the soil is leveled and clear of clutter. There are different types, including leaf rakes (wide, flexible tines) and soil rakes (sturdier, closely spaced tines).',
      inStock: true,
      rating: 4.6,  // Added rating
    ),
    Product(
      id: '9',
      name: 'Compost',
      imageUrl: 'assets/compost.jpg',
      price: 1500.00,
      category: 'Soil & Fertilizers',
      description: 'Compost is a nutrient-rich organic material created by decomposing plant matter, food scraps, and other organic waste. It is used to improve soil structure, increase fertility, and promote healthy plant growth. Compost enhances soil by improving its ability to retain moisture, aeration, and nutrient content. It is ideal for vegetable gardens, flower beds, and lawns. Compost can be made from various materials, such as leaves, grass clippings, kitchen waste, and other organic debris. ',
      inStock: true,
      rating: 4.6,  // Added rating
    ),
    Product(
      id: '10',
      name: ' Fertilizer',
      imageUrl: 'assets/fertilizer.jpg',
      price: 1500.00,
      category: 'Soil & Fertilizers',
      description: 'Fertilizer is a substance that provides essential nutrients to plants, enhancing their growth and productivity. It can be organic, like compost or bone meal, or synthetic, designed to deliver specific nutrients such as nitrogen, phosphorus, and potassium. Fertilizers improve soil fertility, support healthy plant development, and boost crop yields.',
      inStock: true,
      rating: 4.6,  // Added rating
    ),
    // Additional products here...
  ];

  final List<Product> cart = [];
  String searchQuery = '';
  String selectedCategory = 'All';

  @override
  Widget build(BuildContext context) {
    // Generate unique categories dynamically
    final categories = ['All'] +
        products.map((product) => product.category).toSet().toList();

    // Filter products based on the search query and selected category
    List<Product> filteredProducts = products.where((product) {
      final matchesSearch = product.name.toLowerCase().contains(searchQuery.toLowerCase());
      final matchesCategory =
          selectedCategory == 'All' || product.category == selectedCategory;
      return matchesSearch && matchesCategory;
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('STORE'),
        centerTitle: true,
        backgroundColor: Colors.green[800],
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CartPage(cart: cart),
                ),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Search Bar
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  searchQuery = value;
                });
              },
              decoration: InputDecoration(
                hintText: 'Search products...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          // Category Filter
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: categories
                  .map((category) => _buildCategoryChip(category))
                  .toList(),
            ),
          ),
          const SizedBox(height: 8),
          // Product Grid with Centered Images
          Expanded(
            child: GridView.builder(
              itemCount: filteredProducts.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) {
                final product = filteredProducts[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductPage(
                          product: product,
                          onAddToCart: (selectedProduct) {
                            setState(() {
                              cart.add(selectedProduct);
                            });
                          },
                        ),
                      ),
                    );
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.green.withOpacity(0.5),
                        width: 1,
                      ),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 5,
                          offset: const Offset(2, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Center(
                            child: ClipRRect(
                              borderRadius: const BorderRadius.vertical(
                                  top: Radius.circular(10)),
                              child: Image.asset(
                                product.imageUrl,
                                fit: BoxFit.contain, // Center the image
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                product.name,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                '₹ ${product.price.toStringAsFixed(2)}',
                                style: const TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                product.description,
                                style: const TextStyle(
                                  color: Colors.black54,
                                  fontSize: 12,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  // Helper for category chips
  Widget _buildCategoryChip(String category) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: ChoiceChip(
        label: Text(category),
        selected: selectedCategory == category,
        onSelected: (isSelected) {
          setState(() {
            selectedCategory = category;
          });
        },
      ),
    );
  }
}
