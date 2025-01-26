// product_model.dart
class Product {
  final String id;
  final String name;
  final String imageUrl;
  final double price;
  final String category;
  final String description;
  final bool inStock;
  final double rating;  // This is the rating parameter

  Product({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.category,
    required this.description,
    required this.inStock,
    required this.rating,  // Ensure this is required in the constructor
  });
}
