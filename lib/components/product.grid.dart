// lib/components/product_grid.dart
import 'package:flutter/material.dart';
import '../models/product.dart';
import 'product_item.dart';

class ProductGrid extends StatelessWidget {
  final List<Product> products;

  const ProductGrid(this.products, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 250.0), // 水平边距
      child: GridView.builder(
        padding: const EdgeInsets.all(16.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 6,
          childAspectRatio: 0.6,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
        ),
        itemBuilder: (context, index) {
          return ProductItem(products[index]);
        },
        itemCount: products.length,
      ),
    );
  }
}
