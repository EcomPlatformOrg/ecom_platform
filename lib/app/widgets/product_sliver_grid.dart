// lib/app/widgets/product_sliver_grid.dart

import 'package:flutter/material.dart';
import '../../data/model/product.dart';
import './product_item.dart'; // Make sure you import your ProductItem component

class ProductSliverGrid extends StatelessWidget {
  final List<Product> products;

  const ProductSliverGrid(this.products, {super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 250.0), // 水平边距
      sliver: SliverGrid(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 6,
          childAspectRatio: 0.6,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
        ),
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            final product = products[index];
            return ProductItem(product);
          },
          childCount: products.length,
        ),
      ),
    );
  }
}
