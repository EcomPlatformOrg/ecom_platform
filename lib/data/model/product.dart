// lib/data/model/product.dart
class Product {
  final String? id;
  final String name;
  final String description;
  final int? price;
  final int? quantity;
  final int? stockQuantity;
  final String? categoryId;
  final String imageUrl;
  final String? mainCategory;

  Product({
    this.id,
    required this.name,
    required this.description,
    this.price,
    this.quantity,
    this.stockQuantity,
    this.categoryId,
    required this.imageUrl,
    this.mainCategory,
  });
}
